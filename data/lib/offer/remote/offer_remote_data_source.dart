import 'package:data/invoice/remote/model/invoice_dto.dart';

abstract class OfferRemoteDataSource {
  Stream<List<InvoiceDto>> get offers;

  Future<void> editOffer(InvoiceDto invoice);
}
