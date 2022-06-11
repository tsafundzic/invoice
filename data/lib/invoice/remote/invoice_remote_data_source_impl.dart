import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/invoice/remote/invoice_remote_data_source.dart';
import 'package:data/invoice/remote/model/invoice_dto.dart';

const String _invoices = "invoices";

class InvoiceRemoteDataSourceImpl extends InvoiceRemoteDataSource {
  final FirebaseFirestore _firestore;

  InvoiceRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<InvoiceDto>> get invoices {
    return _firestore.collection('${DateTime.now().year}_$_invoices').snapshots().map((QuerySnapshot snapshots) {
      return snapshots.docs.map((QueryDocumentSnapshot doc) {
        var invoices = InvoiceDto.fromJson(doc.data() as Map<String, dynamic>);
        return invoices;
      }).toList();
    });
  }

  @override
  Future<void> editInvoice(InvoiceDto invoice) {
    InvoiceDto invoiceDto = invoice;
    if (invoiceDto.id.isEmpty) {
      invoiceDto = invoiceDto.copyWith(id: _firestore.collection('${invoice.dateOfIssue.toDate().year}_$_invoices').doc().id);
    }
    return _firestore.collection('${invoice.dateOfIssue.toDate().year}_$_invoices').doc(invoiceDto.id).set(invoiceDto.toJson());
  }
}
