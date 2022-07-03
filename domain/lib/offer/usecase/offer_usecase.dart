
import '../../invoice/model/invoice.dart';
import '../offer_repository.dart';

class OfferUseCase {
  final OfferRepository _offerRepository;

  OfferUseCase(this._offerRepository);

  Stream<List<Invoice>> get offers => _offerRepository.offers;

  Future<void> editOffer(Invoice invoice) {
    return _offerRepository.editOffer(invoice);
  }
}
