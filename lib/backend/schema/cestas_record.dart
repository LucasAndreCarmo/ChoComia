import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CestasRecord extends FirestoreRecord {
  CestasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "qnt" field.
  double? _qnt;
  double get qnt => _qnt ?? 0.0;
  bool hasQnt() => _qnt != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _nome = snapshotData['nome'] as String?;
    _descri = snapshotData['descri'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qnt = castToType<double>(snapshotData['qnt']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cestas');

  static Stream<CestasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CestasRecord.fromSnapshot(s));

  static Future<CestasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CestasRecord.fromSnapshot(s));

  static CestasRecord fromSnapshot(DocumentSnapshot snapshot) => CestasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CestasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CestasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CestasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CestasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCestasRecordData({
  String? img,
  String? nome,
  String? descri,
  double? preco,
  double? qnt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'nome': nome,
      'descri': descri,
      'preco': preco,
      'qnt': qnt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CestasRecordDocumentEquality implements Equality<CestasRecord> {
  const CestasRecordDocumentEquality();

  @override
  bool equals(CestasRecord? e1, CestasRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.nome == e2?.nome &&
        e1?.descri == e2?.descri &&
        e1?.preco == e2?.preco &&
        e1?.qnt == e2?.qnt;
  }

  @override
  int hash(CestasRecord? e) =>
      const ListEquality().hash([e?.img, e?.nome, e?.descri, e?.preco, e?.qnt]);

  @override
  bool isValidKey(Object? o) => o is CestasRecord;
}
