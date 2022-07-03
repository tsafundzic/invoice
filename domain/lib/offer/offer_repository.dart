import 'package:domain/invoice/model/invoice.dart';

abstract class OfferRepository {
  Stream<List<Invoice>> get offers;

  Future<void> editOffer(Invoice invoice);
}
