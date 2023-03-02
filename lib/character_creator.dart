import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/constants.extension.dart';

final _characterCreationFormKey = GlobalKey<FormBuilderState>();

class CharacterCreator extends StatefulWidget {
  const CharacterCreator({Key? key}) : super(key: key);

  @override
  State<CharacterCreator> createState() => _CharacterCreatorState();
}

class _CharacterCreatorState extends State<CharacterCreator> {
  final maxIndex = 0;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Character Creation")),
        body: Stepper(
          currentStep: _index,
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          onStepContinue: () {
            setState(() {
              _index = min(_index + 1, maxIndex);
            });
          },
          onStepCancel: () {
            setState(() {
              _index = min(_index - 1, 0);
            });
          },
          steps: [
            Step(
              title: const Text('Name, Class, Exp, and Gold'),
              content: FormBuilder(
                key: _characterCreationFormKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'name',
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: FormBuilderValidators.required(),
                    ),
                    FormBuilderDropdown(
                      name: 'class',
                      decoration: const InputDecoration(labelText: 'Class'),
                      items: CharacterClass.values
                          .map(
                            (characterClass) => DropdownMenuItem(
                              alignment: AlignmentDirectional.center,
                              value: characterClass,
                              child: Text(characterClass.getString()),
                            ),
                          )
                          .toList(),
                    ),
                    FormBuilderTextField(
                      name: 'exp',
                      decoration: const InputDecoration(labelText: 'Exp'),
                      validator: FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.integer(),
                          FormBuilderValidators.min(0)
                        ],
                      ),
                      keyboardType: TextInputType.number,
                      valueTransformer: (value) => int.parse(value ?? '0'),
                    ),
                    FormBuilderTextField(
                      name: 'gold',
                      decoration: const InputDecoration(labelText: 'Gold'),
                      validator: FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.integer(),
                          FormBuilderValidators.min(0)
                        ],
                      ),
                      keyboardType: TextInputType.number,
                      valueTransformer: (value) => int.parse(value ?? '0'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
