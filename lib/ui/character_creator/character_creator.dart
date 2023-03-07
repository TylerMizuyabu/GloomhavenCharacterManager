import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gloomhaven_utility/app/asset_loader.dart';
import 'package:gloomhaven_utility/app/character_builder.dart';
import 'package:gloomhaven_utility/app/user_service/user_service.dart';
import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/item.model.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';
import 'package:gloomhaven_utility/injection.dart';
import 'package:gloomhaven_utility/ui/character_creator/step_one.dart';
import 'package:gloomhaven_utility/ui/character_creator/step_two.dart';
import 'package:rxdart/rxdart.dart';

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
  BehaviorSubject<List<Item>> items = BehaviorSubject<List<Item>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character Creation"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {
              final UserService userService = getIt.get<UserService>();
              userService.logout(context);
            },
          )
        ],
      ),
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
                    content: StepOne(
                      maxWidth: constraints.maxWidth,
                      nameKey: _nameKey,
                      classKey: _classKey,
                      expKey: _expKey,
                      goldKey: _goldKey,
                    ),
                  ),
                  Step(
                    title: const Text('Items'),
                    content: StepTwo(
                      itemsSubject: items,
                      maxHeight: constraints.maxHeight,
                      maxWidth: constraints.maxWidth,
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
      builder.withItems(items.hasValue ? items.value : []);
      // builder.withPerks(state.fields[_perksKey]!.transformedValue);
      // want to use the firestore instance. But maybe should create abstract class to handle interacting with character data source
      // then create a firestore implementation that we can di wit get_it
    }
  }
}
