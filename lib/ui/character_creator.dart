import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gloomhaven_character_manager/app/asset_loader.dart';
import 'package:gloomhaven_character_manager/app/character_builder.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/constants.extension.dart';
import 'package:gloomhaven_character_manager/models/item.model.dart';
import 'package:gloomhaven_character_manager/models/perk.model.dart';
import 'package:gloomhaven_character_manager/injection.dart';

final _characterCreateForm = GlobalKey<FormBuilderState>();
const _nameKey = 'name';
const _classKey = 'class';
const _expKey = 'exp';
const _goldKey = 'gold';
// const _perksKey = 'perks';

class CharacterCreator extends StatefulWidget {
  const CharacterCreator({Key? key}) : super(key: key);

  @override
  State<CharacterCreator> createState() => _CharacterCreatorState();
}

class _CharacterCreatorState extends State<CharacterCreator> {
  final int _maxStepIndex = 2;
  final AssetLoader assetLoader = getIt<AssetLoader>();
  final CharacterBuilder builder = getIt<CharacterBuilder>();

  int _index = 0;
  bool _isItemSubmitDisabled = true;
  List<Item> itemList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Character Creation")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: FormBuilder(
              key: _characterCreateForm,
              child: Stepper(
                currentStep: _index,
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _index = min(_index + 1, _maxStepIndex);
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _index = max(_index - 1, 0);
                  });
                },
                controlsBuilder: (context, details) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: details.stepIndex == _maxStepIndex ? _createCharacter : details.onStepContinue,
                            style: const ButtonStyle(splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory),
                            child: Text(details.stepIndex == _maxStepIndex ? 'Create' : 'Next')),
                        ElevatedButton(
                          onPressed: details.stepIndex == 0 ? () => Navigator.of(context).pop() : details.onStepCancel,
                          style: const ButtonStyle(splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory),
                          child: Text(details.stepIndex == 0 ? 'Cancel' : 'Back'),
                        ),
                      ],
                    ),
                  );
                },
                steps: [
                  Step(
                    title: const Text('Name, Class, Exp, and Gold'),
                    content: Column(
                      children: [
                        FormBuilderTextField(
                          name: _nameKey,
                          decoration: InputDecoration(label: const Text('Name'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          validator: FormBuilderValidators.required(),
                        ),
                        FormBuilderDropdown(
                          name: _classKey,
                          decoration: InputDecoration(label: const Text('Class'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          items: CharacterClass.values
                              .map(
                                (characterClass) => DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  value: characterClass,
                                  child: Text(characterClass.getString()),
                                ),
                              )
                              .toList(),
                          validator: FormBuilderValidators.required(),
                        ),
                        FormBuilderTextField(
                          name: _expKey,
                          initialValue: '0',
                          decoration: InputDecoration(label: const Text('Exp'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required(), FormBuilderValidators.integer(), FormBuilderValidators.min(0)],
                          ),
                          keyboardType: TextInputType.number,
                          valueTransformer: (value) => int.parse(value ?? '0'),
                        ),
                        FormBuilderTextField(
                          name: _goldKey,
                          initialValue: '0',
                          decoration: InputDecoration(label: const Text('Gold'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required(), FormBuilderValidators.integer(), FormBuilderValidators.min(0)],
                          ),
                          keyboardType: TextInputType.number,
                          valueTransformer: (value) => int.tryParse(value ?? '0'),
                        ),
                      ],
                    ),
                  ),
                  Step(
                    title: const Text('Items'),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FutureBuilder(
                                future: assetLoader.items,
                                builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
                                  return FormBuilderDropdown<Item?>(
                                    name: 'item',
                                    initialValue: null,
                                    decoration: InputDecoration(
                                        label: const Text('Item'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth / 3)),
                                    items: snapshot.hasData
                                        ? snapshot.data!
                                            .map((item) =>
                                                DropdownMenuItem(alignment: AlignmentDirectional.center, value: item, child: Text(item.name)))
                                            .toList()
                                        : [],
                                    onChanged: (Item? value) {
                                      // Not sure if this is safe. TODO double check
                                      _isItemSubmitDisabled = value == null || !_characterCreateForm.currentState!.fields['itemQuantity']!.isValid;
                                    },
                                  );
                                }),
                            FormBuilderTextField(
                              name: 'itemQuantity',
                              initialValue: '1',
                              decoration: InputDecoration(
                                  label: const Text('Quantity'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth / 5)),
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.integer(),
                                  FormBuilderValidators.min(1),
                                ],
                              ),
                              valueTransformer: (value) {
                                if (value == null) {
                                  return value;
                                }
                                return int.tryParse(value);
                              },
                            ),
                            ElevatedButton(
                              onPressed: _isItemSubmitDisabled
                                  ? null
                                  : () {
                                      FormBuilderState? state = _characterCreateForm.currentState;
                                      if (state != null && state.isValid) {
                                        //These aren't type safe. TODO look into how to do that.
                                        Item? item = state.fields['item']?.value;
                                        int? quantity = state.fields['itemQuantity']?.transformedValue;

                                        if (item != null && quantity != null) {
                                          for (var i = 0; i < quantity; i++) {
                                            itemList.add(item);
                                          }
                                        }
                                      }
                                    },
                              child: const Text("Add Item"),
                            )
                          ],
                        ),
                        SizedBox(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight / 3,
                          child: ListView(
                            shrinkWrap: true,
                            children: itemList
                                .map((e) => Padding(
                                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                      child: Text('Item $e.name'),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Step(
                    title: const Text('Perks'),
                    content: FutureBuilder(
                      future: assetLoader.perks,
                      builder: (BuildContext context, AsyncSnapshot<Map<CharacterClass, List<Perk>>> snapshot) {
                        return const Text('TODO build out this section');
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _createCharacter() {
    FormBuilderState? state = _characterCreateForm.currentState;

    if (state != null && state.isValid) {
      builder.withName(state.fields[_nameKey]!.transformedValue);
      builder.withClass(state.fields[_classKey]!.transformedValue);
      builder.withExp(state.fields[_expKey]!.transformedValue);
      builder.withGold(state.fields[_goldKey]!.transformedValue);
      builder.withItems(itemList);
      // builder.withPerks(state.fields[_perksKey]!.transformedValue);
      // want to use the firestore instance. But maybe should create abstract class to handle interacting with character data source
      // then create a firestore implementation that we can di wit get_it
    }
  }
}
