import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
      super.reference,
      super.data,
      ) {
    _initializeFields();
  }

  // "paydate" field.
  DateTime? _paydate;
  DateTime? get paydate => _paydate;
  bool haspaydate() => _paydate != null;

  // "journal" field.
  String? _journal;
  String get journal => _journal?? '';
  bool hasAddress1() => _journal != null;

  // "payme" field.
  String? _payme;
  String get payme => _payme ?? '';
  bool haspayme() => _payme != null;

  // "repbank" field.
  String? _repbank;
  String get repbank => _repbank ?? '';
  bool hasrepbank() => _repbank != null;

  // "amt" field.
  String? _amt;
  String get amt => _amt ?? '';
  bool hasamt() => _amt != null;

  // "memo" field.
  String? _memo;
  String get memo => _memo ?? '';
  bool hasmemo() => _memo != null;

  // "paymentid" field.
  String? _paymentid;
  String get paymentid => _paymentid ?? '';
  bool haspaymentid() => _paymentid != null;



  void _initializeFields() {
    _paydate = snapshotData['paydate'] as DateTime?;
    _journal = snapshotData['journal'] as String?;
    _payme = snapshotData['payme'] as String?;
    _repbank = snapshotData['repbank'] as String?;
    _amt = snapshotData['amt'] as String?;
    _memo = snapshotData['memo'] as String?;
    _paymentid = snapshotData['paymentid'] as String?;

  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customer');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
      Map<String, dynamic> data,
      DocumentReference reference,
      ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
          reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  DateTime? paydate,
  String? journal,
  String? payme,
  String? repbank,
  String? amt,
  String? memo,
  String? paymentid,

}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'paydate': paydate,
      'journal': journal,
      'payme': payme,
      'repbank': repbank,
      'amt': amt,
      'memo': memo,
      'paymentid': paymentid,

    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.paydate == e2?.paydate &&
        e1?.journal == e2?.journal &&
        e1?.payme == e2?.payme &&
        e1?.repbank == e2?.repbank &&
        e1?.amt == e2?.amt &&
        e1?.memo == e2?.memo &&
        e1?.paymentid == e2?.paymentid ;

  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
    e?.paydate,
    e?.journal,
    e?.payme,
    e?.repbank,
    e?.amt,
    e?.memo,
    e?.paymentid,

  ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
