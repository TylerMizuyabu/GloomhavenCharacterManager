import 'package:gloomhaven_character_manager/models/constants.dart';

import '../models/item.model.dart';

final List<Item> items = [
  Item(
    name: 'Eagle-Eye Goggles',
    id: 1,
    description: 'During your attack, gain Advantage for the entire Attack action',
    equipSlot: ItemEquipSlot.head,
    useType: ItemUseType.spend,
  ),
  Item(
    name: 'Iron Helmet',
    id: 2,
    description: 'When attacked, consider any 2x attack modifier card the enemy draws to be a +0 instead',
    equipSlot: ItemEquipSlot.head,
    useType: ItemUseType.infinite,
  ),
  Item(
    name: 'Chain Armor',
    id: 3,
    description: 'During your turn, gain Shield 1 for the rest of the round',
    equipSlot: ItemEquipSlot.body,
    useType: ItemUseType.spend,
  )
];
