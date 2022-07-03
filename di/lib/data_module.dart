import 'package:data/invoice/remote/invoice_remote_data_source_impl.dart';
import 'package:data/customer/remote/customer_remote_data_source_impl.dart';
import 'package:data/offer/remote/offer_remote_data_source_impl.dart';
import 'package:data/offer/remote/offer_repository_impl.dart';
import 'package:data/user/remote/user_remote_data_source_impl.dart';
import 'package:data/user/user_repository_impl.dart';
import 'package:data/company/company_repository_impl.dart';
import 'package:data/company/remote/company_remote_data_source_impl.dart';
import 'package:data/customer/customer_repository_impl.dart';
import 'package:data/invoice/invoice_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final googleSignInProvider = Provider((ref) => GoogleSignIn());
final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);
final firebaseFirestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final userRemoteDataSourceProvider = Provider((ref) => UserRemoteDataSourceImpl(ref.watch(googleSignInProvider), ref.watch(firebaseAuthProvider), ref.watch(firebaseFirestoreProvider)));
final userRepositoryProvider = Provider((ref) => UserRepositoryImpl(ref.watch(userRemoteDataSourceProvider)));

final companyRemoteDataSourceProvider = Provider((ref) => CompanyRemoteDataSourceImpl(ref.watch(firebaseFirestoreProvider)));
final companyRepositoryProvider = Provider((ref) => CompanyRepositoryImpl(ref.watch(companyRemoteDataSourceProvider)));

final customerRemoteDataSourceProvider = Provider((ref) => CustomerRemoteDataSourceImpl(ref.watch(firebaseFirestoreProvider)));
final customerRepositoryProvider = Provider((ref) => CustomerRepositoryImpl(ref.watch(customerRemoteDataSourceProvider)));

final invoiceRemoteDataSourceProvider = Provider((ref) => InvoiceRemoteDataSourceImpl(ref.watch(firebaseFirestoreProvider)));
final invoiceRepositoryProvider = Provider((ref) => InvoiceRepositoryImpl(ref.watch(invoiceRemoteDataSourceProvider)));

final offerRemoteDataSourceProvider = Provider((ref) => OfferRemoteDataSourceImpl(ref.watch(firebaseFirestoreProvider)));
final offerRepositoryProvider = Provider((ref) => OfferRepositoryImpl(ref.watch(offerRemoteDataSourceProvider)));
