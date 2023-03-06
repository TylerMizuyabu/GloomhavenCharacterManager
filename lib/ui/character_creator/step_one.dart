import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/constants.extension.dart';

class StepOne extends StatelessWidget {
  final double maxWidth;
  final String nameKey;
  final String classKey;
  final String expKey;
  final String goldKey;

  const StepOne({Key? key, required this.maxWidth, required this.nameKey, required this.classKey, required this.expKey, required this.goldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: nameKey,
          decoration: InputDecoration(label: const Text('Name'), constraints: BoxConstraints.tightFor(width: maxWidth)),
          validator: FormBuilderValidators.required(),
        ),
        FormBuilderDropdown(
          name: classKey,
          decoration: InputDecoration(label: const Text('Class'), constraints: BoxConstraints.tightFor(width: maxWidth)),
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
          name: expKey,
          initialValue: '0',
          decoration: InputDecoration(label: const Text('Exp'), constraints: BoxConstraints.tightFor(width: maxWidth)),
          validator: FormBuilderValidators.compose(
            [FormBuilderValidators.required(), FormBuilderValidators.integer(), FormBuilderValidators.min(0)],
          ),
          keyboardType: TextInputType.number,
          valueTransformer: (value) => int.parse(value ?? '0'),
        ),
        FormBuilderTextField(
          name: goldKey,
          initialValue: '0',
          decoration: InputDecoration(label: const Text('Gold'), constraints: BoxConstraints.tightFor(width: maxWidth)),
          validator: FormBuilderValidators.compose(
            [FormBuilderValidators.required(), FormBuilderValidators.integer(), FormBuilderValidators.min(0)],
          ),
          keyboardType: TextInputType.number,
          valueTransformer: (value) => int.tryParse(value ?? '0'),
        ),
      ],
    );
  }
}
