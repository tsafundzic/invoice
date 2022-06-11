import '../invoice_repository.dart';
import '../model/invoice.dart';

class InvoicesUseCase {
  final InvoiceRepository _invoiceRepository;

  InvoicesUseCase(this._invoiceRepository);

  Stream<List<Invoice>> get invoices => _invoiceRepository.invoices;

  Future<void> editInvoice(Invoice invoice) {
    return _invoiceRepository.editInvoice(invoice);
  }
}
