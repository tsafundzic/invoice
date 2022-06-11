import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/invoice/remote/model/invoice_item_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/invoice/model/invoice.dart';

import '../../../common/utils/timestamp_converter.dart';

part 'invoice_dto.freezed.dart';

part 'invoice_dto.g.dart';

@freezed
class InvoiceDto with _$InvoiceDto {
  const InvoiceDto._();

  @JsonSerializable(explicitToJson: true, anyMap: true)
  const factory InvoiceDto({
    @Default('') @JsonKey(name: "id") String id,
    @Default('') @JsonKey(name: "invoiceNr") String invoiceNr,
    @Default('') @JsonKey(name: "companyId") String companyId,
    @Default('') @JsonKey(name: "customerId") String customerId,
    @JsonKey(name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp) required Timestamp paymentDue,
    @JsonKey(name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp) required Timestamp dateOfIssue,
    @JsonKey(name: "deliveryDate", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp) required Timestamp deliveryDate,
    @Default([]) @JsonKey(name: "items") List<InvoiceItemDto> items,
    @Default(0) @JsonKey(name: "totalPrice") int totalPrice,
    @Default('') @JsonKey(name: "currency") String currency,
    @Default(0) @JsonKey(name: "rebate") int rebate,
    @Default(0) @JsonKey(name: "vat") int vat,
    @JsonKey(name: "referenceNumber") String? referenceNumber,
    @JsonKey(name: "dateOfPayment", fromJson: fromJsonTimestampNullable, toJson: toJsonTimestampNullable) Timestamp? dateOfPayment,
    @JsonKey(name: "cashCharged") int? cashCharged,
    @JsonKey(name: "transferCharged") int? transferCharged,
    @JsonKey(name: "domesticCurrency") String? domesticCurrency,
    @JsonKey(name: "domesticTotalPrice") int? domesticTotalPrice,
    @JsonKey(name: "exchangeRate") double? exchangeRate,
  }) = _InvoiceDto;

  factory InvoiceDto.fromJson(Map<String, dynamic> json) => _$InvoiceDtoFromJson(json);

  factory InvoiceDto.fromInvoice(Invoice invoice) => InvoiceDto(
        id: invoice.id,
        invoiceNr: invoice.invoiceNr,
        companyId: invoice.companyId,
        customerId: invoice.customerId,
        paymentDue: Timestamp.fromDate(invoice.paymentDue),
        dateOfIssue: Timestamp.fromDate(invoice.dateOfIssue),
        deliveryDate: Timestamp.fromDate(invoice.deliveryDate),
        items: invoice.items.map((e) => InvoiceItemDto.fromInvoiceItem(e)).toList(),
        totalPrice: invoice.totalPrice,
        currency: invoice.currency,
        rebate: invoice.rebate,
        vat: invoice.vat,
        referenceNumber: invoice.referenceNumber,
        dateOfPayment: invoice.dateOfPayment != null ? Timestamp.fromDate(invoice.dateOfPayment!) : null,
        cashCharged: invoice.cashCharged,
        transferCharged: invoice.transferCharged,
        domesticTotalPrice: invoice.domesticTotalPrice,
        domesticCurrency: invoice.domesticCurrency,
        exchangeRate: invoice.exchangeRate,
      );

  Invoice get toInvoice => Invoice(
        id: id,
        invoiceNr: invoiceNr,
        companyId: companyId,
        customerId: customerId,
        paymentDue: paymentDue.toDate(),
        dateOfIssue: dateOfIssue.toDate(),
        deliveryDate: deliveryDate.toDate(),
        items: items.map((e) => e.toInvoiceItem).toList(),
        totalPrice: totalPrice,
        currency: currency,
        rebate: rebate,
        vat: vat,
        referenceNumber: referenceNumber,
        dateOfPayment: dateOfPayment?.toDate(),
        cashCharged: cashCharged,
        transferCharged: transferCharged,
        domesticTotalPrice: domesticTotalPrice,
        domesticCurrency: domesticCurrency,
        exchangeRate: exchangeRate,
      );
}
