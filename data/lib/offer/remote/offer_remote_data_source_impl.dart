import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/invoice/remote/model/invoice_dto.dart';

import 'offer_remote_data_source.dart';

const String _offers = "offers";

class OfferRemoteDataSourceImpl extends OfferRemoteDataSource {
  final FirebaseFirestore _firestore;

  OfferRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<InvoiceDto>> get offers {
    return _firestore.collection('${DateTime.now().year}_$_offers').snapshots().map((QuerySnapshot snapshots) {
      return snapshots.docs.map((QueryDocumentSnapshot doc) {
        var invoices = InvoiceDto.fromJson(doc.data() as Map<String, dynamic>);
        return invoices;
      }).toList();
    });
  }

  @override
  Future<void> editOffer(InvoiceDto invoice) {
    InvoiceDto invoiceDto = invoice;
    if (invoiceDto.id.isEmpty) {
      invoiceDto = invoiceDto.copyWith(id: _firestore.collection('${invoice.dateOfIssue.toDate().year}_$_offers').doc().id);
    }
    return _firestore.collection('${invoice.dateOfIssue.toDate().year}_$_offers').doc(invoiceDto.id).set(invoiceDto.toJson());
  }
}
