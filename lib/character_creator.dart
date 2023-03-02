import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/constants.extension.dart';

final _characterCreationFormKey1 = GlobalKey<FormBuilderState>();
final _characterCreationFormKey2 = GlobalKey<FormBuilderState>();
final _characterCreationFormKey3 = GlobalKey<FormBuilderState>();

class CharacterCreator extends StatefulWidget {
  const CharacterCreator({Key? key}) : super(key: key);

  @override
  State<CharacterCreator> createState() => _CharacterCreatorState();
}

class _CharacterCreatorState extends State<CharacterCreator> {
  final int _maxStepIndex = 2;
  int _index = 0;
  bool _isItemSubmitDisabled = true;
  List<int> itemList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Character Creation")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
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
                        child: Text(details.stepIndex == _maxStepIndex ? 'Create' : 'Next'),
                      ),
                      ElevatedButton(
                        onPressed: details.stepIndex == 0 ? () => Navigator.of(context).pop() : details.onStepCancel,
                        child: Text(details.stepIndex == 0 ? 'Cancel' : 'Back'),
                      ),
                    ],
                  ),
                );
              },
              steps: [
                Step(
                  title: const Text('Name, Class, Exp, and Gold'),
                  content: FormBuilder(
                    key: _characterCreationFormKey1,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'name',
                          decoration: InputDecoration(label: const Text('Name'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          validator: FormBuilderValidators.required(),
                        ),
                        FormBuilderDropdown(
                          name: 'class',
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
                          name: 'exp',
                          initialValue: '0',
                          decoration: InputDecoration(label: const Text('Exp'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth)),
                          validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required(), FormBuilderValidators.integer(), FormBuilderValidators.min(0)],
                          ),
                          keyboardType: TextInputType.number,
                          valueTransformer: (value) => int.parse(value ?? '0'),
                        ),
                        FormBuilderTextField(
                          name: 'gold',
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
                ),
                Step(
                  title: const Text('Items'),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormBuilder(
                        key: _characterCreationFormKey2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FormBuilderTextField(
                              name: 'itemId',
                              decoration: InputDecoration(
                                  label: const Text('Item Id'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth / 3)),
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.integer(),
                                  FormBuilderValidators.min(1),
                                  FormBuilderValidators.max(36)
                                ],
                              ),
                              valueTransformer: (value) {
                                if (value == null) {
                                  return value;
                                }
                                return int.tryParse(value);
                              },
                              onChanged: (value) {
                                _isItemSubmitDisabled = value == null && int.tryParse(value ?? '0') != null && int.parse(value ?? '0') > 0;
                              },
                            ),
                            FormBuilderTextField(
                              name: 'itemQuantity',
                              initialValue: '1',
                              decoration: InputDecoration(
                                  label: const Text('Quantity'), constraints: BoxConstraints.tightFor(width: constraints.maxWidth / 5)),
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(),
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
                                      if (_characterCreationFormKey2.currentState == null) {
                                        return;
                                      }
                                      FormBuilderState state = _characterCreationFormKey2.currentState!;
                                      if (state.isValid) {
                                        var itemId = state.fields['itemId']?.transformedValue;
                                        var quantity = state.fields['itemQuantity']?.transformedValue;

                                        if (itemId == null || quantity == null) {
                                          return;
                                        }

                                        for (var i = 0; i < quantity; i++) {
                                          itemList.add(itemId);
                                        }
                                      }
                                    },
                              child: const Text("Add Item"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 3,
                        child: ListView(
                          shrinkWrap: true,
                          children: itemList
                              .map((e) => Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                    child: Text('Item $e'),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Step(title: Text('Perks'), content: Text('TODO Make the perk selection form'))
              ],
            ),
          );
        },
      ),
    );
  }

  void _createCharacter() {}
}
