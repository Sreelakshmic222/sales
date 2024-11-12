import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuotationsRecord extends FirestoreRecord {
  QuotationsRecord._(
      super.reference,
      super.data,
      ) {
    _initializeFields();
  }

  // "date" field.
  DateTime ? _date;
  DateTime? get date => _date;
  bool hasdate() => _date != null;



  // "customer" field.
  String? _customer;
  String get customer => _customer ?? '';
  bool hascustomer() => _customer != null;

  // "invoiceadd" field.
  String? _invoiceadd;
  String get invoiceadd => _invoiceadd ?? '';
  bool hasinvoiceadd() => _invoiceadd != null;

  // "city" field.
  String? _payter;
  String get payter => _payter ?? '';
  bool hasCity() => _payter != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasproduct() => _product != null;

  // "qnty" field.
  String? _qnty;
  String get qnty => _qnty ?? '';
  bool hasqnty() => _qnty != null;

  // "up" field.
  String? _up;
  String get up => _up ?? '';
  bool hasFirstName() => _up != null;

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  bool hastotal() => _total != null;

  // "qid" field.
  String? _qid;
  String get qid => _qid ?? '';
  bool hasqid() => _qid != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hascompany() => _company != null;


  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _customer = snapshotData['customer'] as String?;
    _invoiceadd = snapshotData['invoiceadd'] as String?;
    _payter = snapshotData['payter'] as String?;
    _product = snapshotData['product'] as String?;
    _qnty = snapshotData['qnty'] as String?;
    _up = snapshotData['up'] as String?;
    _total = snapshotData['total'] as String?;
    _qid = snapshotData['qid'] as String?;
    _company = snapshotData['company'] as String?;

  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quotations');

  static Stream<QuotationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuotationsRecord.fromSnapshot(s));

  static Future<QuotationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuotationsRecord.fromSnapshot(s));

  static QuotationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuotationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuotationsRecord getDocumentFromData(
      Map<String, dynamic> data,
      DocumentReference reference,
      ) =>
      QuotationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuotationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuotationsRecord &&
          reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuotationRecordData({
  String? date,
  String? customer,
  String? invoiceadd,
  String? payter,
  String? product,
  String? qnty,
  String? up,
  String? total,
  String? qid,
  String? company,
  String? country,
  String? addresstype,
  int? wallet,
  String? photo,
  String? password,
  String? displayName,
  String? photoUrl,

  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customer_name': date,
      'customer': customer,
      'invoiceadd': invoiceadd,
      'city': payter,
      'product': product,
      'qnty': qnty,
      'up': up,
      'total': total,
      'qid': qid,
      'company': company,


      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuotationsRecordDocumentEquality implements Equality<QuotationsRecord> {
  const QuotationsRecordDocumentEquality();

  @override
  bool equals(QuotationsRecord? e1, QuotationsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.customer == e2?.customer &&
        e1?.invoiceadd == e2?.invoiceadd &&
        e1?.payter == e2?.payter &&
        e1?.product == e2?.product &&
        e1?.qnty == e2?.qnty &&
        e1?.up == e2?.up &&
        e1?.total == e2?.total &&
        e1?.qid == e2?.qid &&
        e1?.company == e2?.company ;

  }

  @override
  int hash(QuotationsRecord? e) => const ListEquality().hash([
    e?.date,
    e?.customer,
    e?.invoiceadd,
    e?.payter,
    e?.product,
    e?.qnty,
    e?.up,
    e?.total,
    e?.qid,
    e?.company,


  ]);

  @override
  bool isValidKey(Object? o) => o is QuotationsRecord;
}
