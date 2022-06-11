import 'package:domain/company/model/item_type.dart';
import 'package:domain/invoice/model/units.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_item.freezed.dart';

@freezed
class InvoiceItem with _$InvoiceItem {
  const factory InvoiceItem({
    required final String id,
    required final String name,
    required final Unit unit,
    required final int amount,
    required final int price,
    required final int rebate,
    required final ItemType itemType,
  }) = _InvoiceItem;
}
