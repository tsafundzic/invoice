import 'package:freezed_annotation/freezed_annotation.dart';

import 'invoice_item.dart';

part 'invoice.freezed.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required final String id,
    required final String invoiceNr,
    required final String companyId,
    required final String customerId,
    required final DateTime paymentDue,
    required final DateTime dateOfIssue,
    required final DateTime deliveryDate,
    required final List<InvoiceItem> items,
    required final int totalPrice,
    required final String currency,
    required final int rebate,
    required final int vat,
    required final String? referenceNumber,
    required final DateTime? dateOfPayment,
    required final int? cashCharged,
    required final int? transferCharged,
    required final String? domesticCurrency,
    required final int? domesticTotalPrice,
    required final double? exchangeRate,
  }) = _Invoice;
}
