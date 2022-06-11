import 'package:domain/company/model/item_type.dart';
import 'package:domain/invoice/model/units.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/invoice/model/invoice_item.dart';

part 'invoice_item_dto.freezed.dart';

part 'invoice_item_dto.g.dart';

@freezed
class InvoiceItemDto with _$InvoiceItemDto {
  const InvoiceItemDto._();

  const factory InvoiceItemDto({
    @Default('') @JsonKey(name: "id") String id,
    @Default('') @JsonKey(name: "name") String name,
    @Default('') @JsonKey(name: "unit") String unit,
    @Default(0) @JsonKey(name: "amount") int amount,
    @Default(0) @JsonKey(name: "price") int price,
    @Default(0) @JsonKey(name: "rebate") int rebate,
    @Default('') @JsonKey(name: "itemType") String itemType,
  }) = _InvoiceItemDto;

  factory InvoiceItemDto.fromJson(Map<String, dynamic> json) => _$InvoiceItemDtoFromJson(json);

  factory InvoiceItemDto.fromInvoiceItem(InvoiceItem invoiceItem) => InvoiceItemDto(
        id: invoiceItem.id,
        name: invoiceItem.name,
        unit: invoiceItem.unit.name,
        amount: invoiceItem.amount,
        price: invoiceItem.price,
        rebate: invoiceItem.rebate,
        itemType: invoiceItem.itemType.name,
      );

  InvoiceItem get toInvoiceItem => InvoiceItem(
        id: id,
        name: name,
        unit: Unit.values.firstWhere((element) => element.name == unit, orElse: () => Unit.piece),
        amount: amount,
        price: price,
        rebate: rebate,
        itemType: itemType.isNotEmpty ? ItemType.values.firstWhere((element) => element.name == itemType) : ItemType.service,
      );
}
