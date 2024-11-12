import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomersRecord extends FirestoreRecord {
  CustomersRecord._(
      super.reference,
      super.data,
      ) {
    _initializeFields();
  }

  // "ctype" field.
  String? _ctype;
  String get ctype => _ctype ?? '';
  bool hasCustomerName() => _ctype != null;

  // "cname" field.
  String? _cname;
  String get cname => _cname ?? '';
  bool hascname() => _cname != null;

  // "cadd" field.
  String? _cadd;
  String get cadd => _cadd ?? '';
  bool hascadd() => _cadd != null;

  // "cphone" field.
  String? _cphone;
  String get cphone=> _cphone?? '';
  bool hascphone() => _cphone != null;

  // "cemail" field.
  String? _cemail;
  String get cemail => _cemail ?? '';
  bool hascemail() => _cemail != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hascompany() => _company != null;

  // "caddtype" field.
  String? _caddtype;
  String get caddtype => _caddtype ?? '';
  bool hascaddtype() => _caddtype != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasuid() => _uid != null;



  void _initializeFields() {
    _ctype = snapshotData['ctype'] as String?;
    _cname = snapshotData['cname'] as String?;
    _cadd = snapshotData['cadd'] as String?;
    _cphone = snapshotData['cphone'] as String?;
    _cemail = snapshotData['cemail'] as String?;
    _company = snapshotData['company'] as String?;
    _caddtype = snapshotData['caddtype'] as String?;

    _uid = snapshotData['uid'] as String?;

  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customer');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomersRecord.fromSnapshot(s));

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomersRecord.fromSnapshot(s));

  static CustomersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomersRecord getDocumentFromData(
      Map<String, dynamic> data,
      DocumentReference reference,
      ) =>
      CustomersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomersRecord &&
          reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomerRecordData({
  String? ctype,
  String? cname,
  String? cadd,
  String? cphone,
  String? cemail,
  String? company,
  String? caddtype,

  String? uid,

}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ctype': ctype,
      'cname': cname,
      'cadd': cadd,
      'cphone': cphone,
      'cemail': cemail,
      'company': company,
      'caddtype': caddtype,

      'uid': uid,

    }.withoutNulls,
  );

  return firestoreData;
}

class CustomerRecordDocumentEquality implements Equality<CustomersRecord> {
  const CustomerRecordDocumentEquality();

  @override
  bool equals(CustomersRecord? e1, CustomersRecord? e2) {
    return e1?.ctype == e2?.ctype &&
        e1?.cname == e2?.cname &&
        e1?.cadd == e2?.cadd &&
        e1?.cphone == e2?.cphone &&
        e1?.cemail == e2?.cemail &&
        e1?.company == e2?.company &&
        e1?.caddtype == e2?.caddtype &&

        e1?.uid == e2?.uid ;

  }

  @override
  int hash(CustomersRecord? e) => const ListEquality().hash([
    e?.ctype,
    e?.cname,
    e?.cadd,
    e?.cphone,
    e?.cemail,
    e?.company,
    e?.caddtype,
    e?.uid,

  ]);

  @override
  bool isValidKey(Object? o) => o is CustomersRecord;
}
