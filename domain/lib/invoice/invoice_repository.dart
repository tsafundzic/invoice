import 'package:domain/invoice/model/invoice.dart';

abstract class InvoiceRepository {
  Stream<List<Invoice>> get invoices;

  Future<void> editInvoice(Invoice invoice);
}
