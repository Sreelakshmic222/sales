import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
      super.reference,
      super.data,
      ) {
    _initializeFields();
  }

  // "ptype" field.
  String? _ptype;
  String get ptype => _ptype ?? '';
  bool hasptype() => _ptype != null;

  // "sold" field.
  bool? _sold;
  bool get sold => _sold ?? false;
  bool hassold() => _sold != null;

  // "purchase" field.
  bool? _purchase;
  bool get purchase => _purchase ?? false;
  bool haspurchase() => _purchase != null;

  // "pname" field.
  String? _pname;
  String get pname => _pname ?? '';
  bool haspname() => _pname != null;

  // "psellp" field.
  String? _psellp;
  String get psellp => _psellp ?? '';
  bool haspsellp() => _psellp != null;

  // "pcost" field.
  String? _pcost;
  String get pcost => _pcost ?? '';
  bool haspcost() => _pcost != null;

  // "ponhand" field.
  String? _ponhand;
  String get ponhand => _ponhand ?? '';
  bool hasponhand() => _ponhand != null;

  // "punit" field.
  String? _punit;
  String get punit => _punit ?? '';
  bool haspunit() => _punit != null;

  // "pforcasted" field.
  String? _pforcasted;
  String get pforcasted => _pforcasted ?? '';
  bool haspforcasted() => _pforcasted != null;

  // "pid" field.
  String? _pid;
  String get pid => _pid ?? '';
  bool haspid() => _pid != null;



  void _initializeFields() {
    _ptype = snapshotData['ptype'] as String?;
    _sold = snapshotData['sold'] as bool?;
    _purchase = snapshotData['purchase'] as bool?;
    _pname = snapshotData['pname'] as String?;
    _psellp = snapshotData['psellp'] as String?;
    _pcost = snapshotData['pcost'] as String?;
    _ponhand = snapshotData['ponhand'] as String?;
    _punit = snapshotData['punit'] as String?;
    _pforcasted = snapshotData['pforcasted'] as String?;
    _pid = snapshotData['pid'] as String?;

  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
      Map<String, dynamic> data,
      DocumentReference reference,
      ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
          reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? ptype,
  bool? sold,
  bool? purchase,
  String? pname,
  String? psellp,
  String? pcost,
  String? ponhand,
  String? punit,
  String? pforcasted,
  String? pid,

}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ptype': ptype,
      'sold': sold,
      'purchase': purchase,
      'pname': pname,
      'psellp': psellp,
      'pcost': pcost,
      'ponhand': ponhand,
      'punit': punit,
      'pforcasted': pforcasted,
      'pid': pid,

    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.ptype == e2?.ptype &&
        e1?.sold == e2?.sold &&
        e1?.purchase == e2?.purchase &&
        e1?.pname == e2?.pname &&
        e1?.psellp == e2?.psellp &&
        e1?.pcost == e2?.pcost &&
        e1?.ponhand == e2?.ponhand &&
        e1?.punit == e2?.punit &&
        e1?.pforcasted == e2?.pforcasted &&
        e1?.pid == e2?.pid ;

  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
    e?.ptype,
    e?.sold,
    e?.purchase,
    e?.pname,
    e?.psellp,
    e?.pcost,
    e?.ponhand,
    e?.punit,
    e?.pforcasted,
    e?.pid,

  ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
