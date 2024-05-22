import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfeitariaRecord extends FirestoreRecord {
  ConfeitariaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

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
    _descri = snapshotData['descri'] as String?;
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qnt = castToType<double>(snapshotData['qnt']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Confeitaria');

  static Stream<ConfeitariaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConfeitariaRecord.fromSnapshot(s));

  static Future<ConfeitariaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConfeitariaRecord.fromSnapshot(s));

  static ConfeitariaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConfeitariaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConfeitariaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConfeitariaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConfeitariaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConfeitariaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConfeitariaRecordData({
  String? img,
  String? descri,
  String? nome,
  double? preco,
  double? qnt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'descri': descri,
      'nome': nome,
      'preco': preco,
      'qnt': qnt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConfeitariaRecordDocumentEquality implements Equality<ConfeitariaRecord> {
  const ConfeitariaRecordDocumentEquality();

  @override
  bool equals(ConfeitariaRecord? e1, ConfeitariaRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.descri == e2?.descri &&
        e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.qnt == e2?.qnt;
  }

  @override
  int hash(ConfeitariaRecord? e) =>
      const ListEquality().hash([e?.img, e?.descri, e?.nome, e?.preco, e?.qnt]);

  @override
  bool isValidKey(Object? o) => o is ConfeitariaRecord;
}
