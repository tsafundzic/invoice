import 'package:data/invoice/remote/invoice_remote_data_source.dart';
import 'package:data/invoice/remote/model/invoice_dto.dart';
import 'package:domain/invoice/invoice_repository.dart';
import 'package:domain/invoice/model/invoice.dart';

class InvoiceRepositoryImpl extends InvoiceRepository {
  final InvoiceRemoteDataSource remoteDataSource;

  InvoiceRepositoryImpl(this.remoteDataSource);

  @override
  Stream<List<Invoice>> get invoices => remoteDataSource.invoices.map((event) => event.map((e) => e.toInvoice).toList());

  @override
  Future<void> editInvoice(Invoice invoice) {
    return remoteDataSource.editInvoice(InvoiceDto.fromInvoice(invoice));
  }
}
