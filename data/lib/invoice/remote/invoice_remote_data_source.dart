import 'package:data/invoice/remote/model/invoice_dto.dart';

abstract class InvoiceRemoteDataSource {
  Stream<List<InvoiceDto>> get invoices;

  Future<void> editInvoice(InvoiceDto invoice);
}
