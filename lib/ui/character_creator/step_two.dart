import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gloomhaven_utility/app/asset_loader.dart';
import 'package:gloomhaven_utility/injection.dart';
import 'package:gloomhaven_utility/models/item.model.dart';
import 'package:rxdart/rxdart.dart';

final _itemStateKey = GlobalKey<FormBuilderFieldState<FormBuilderDropdown<Item?>, Item?>>();
final _itemQuantityStateKey = GlobalKey<FormBuilderFieldState<FormBuilderTextField, String>>();

class StepTwo extends StatefulWidget {
  final double maxWidth;
  final double maxHeight;
  final BehaviorSubject<List<Item>> itemsSubject;
  const StepTwo({Key? key, required this.maxWidth, required this.maxHeight, required this.itemsSubject}) : super(key: key);

  @override
  State<StepTwo> createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  final AssetLoader assetLoader = getIt<AssetLoader>();
  final String _itemKey = 'item';
  final String _itemQuantityKey = 'itemQuantity';

  Item? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FutureBuilder(
                future: assetLoader.items,
                builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
                  return FormBuilderDropdown<Item?>(
                    key: _itemStateKey,
                    name: _itemKey,
                    initialValue: null,
                    decoration: InputDecoration(label: const Text('Item'), constraints: BoxConstraints.tightFor(width: widget.maxWidth / 3)),
                    items: snapshot.hasData
                        ? snapshot.data!
                            .map((item) => DropdownMenuItem(alignment: AlignmentDirectional.center, value: item, child: Text(item.name)))
                            .toList()
                        : [],
                    onChanged: (Item? value) {
                      _selectedItem = value;
                    },
                  );
                }),
            FormBuilderTextField(
              key: _itemQuantityStateKey,
              name: _itemQuantityKey,
              initialValue: '1',
              decoration: InputDecoration(label: const Text('Quantity'), constraints: BoxConstraints.tightFor(width: widget.maxWidth / 5)),
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
              onPressed: _selectedItem != null
                  ? null
                  : () {
                      Item? item = _itemStateKey.currentState?.value;
                      int? quantity = _itemQuantityStateKey.currentState?.transformedValue;

                      if (item != null && quantity != null) {
                        for (var i = 0; i < quantity; i++) {
                          widget.itemsSubject.add(widget.itemsSubject.hasValue ? [...widget.itemsSubject.value, item] : [item]);
                        }
                      }
                    },
              child: const Text("Add Item"),
            )
          ],
        ),
        StreamBuilder<List<Item>>(
            stream: widget.itemsSubject,
            builder: (context, snapshot) {
              return SizedBox(
                width: widget.maxWidth,
                height: widget.maxHeight / 3,
                child: ListView(
                  shrinkWrap: true,
                  children: (snapshot.hasData ? snapshot.requireData : [])
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text('Item $e.name'),
                        ),
                      )
                      .toList(),
                ),
              );
            })
      ],
    );
  }
}
