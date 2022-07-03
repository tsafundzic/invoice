import 'package:domain/invoice/model/invoice.dart';
import 'package:domain/offer/offer_repository.dart';

import '../../invoice/remote/model/invoice_dto.dart';
import 'offer_remote_data_source.dart';

class OfferRepositoryImpl extends OfferRepository {
  final OfferRemoteDataSource remoteDataSource;

  OfferRepositoryImpl(this.remoteDataSource);

  @override
  Stream<List<Invoice>> get offers => remoteDataSource.offers.map((event) => event.map((e) => e.toInvoice).toList());

  @override
  Future<void> editOffer(Invoice invoice) {
    return remoteDataSource.editOffer(InvoiceDto.fromInvoice(invoice));
  }
}
