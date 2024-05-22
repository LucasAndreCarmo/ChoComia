import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "qnt" field.
  double? _qnt;
  double get qnt => _qnt ?? 0.0;
  bool hasQnt() => _qnt != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _descri = snapshotData['descri'] as String?;
    _nome = snapshotData['nome'] as String?;
    _qnt = castToType<double>(snapshotData['qnt']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? img,
  double? preco,
  String? descri,
  String? nome,
  double? qnt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'preco': preco,
      'descri': descri,
      'nome': nome,
      'qnt': qnt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.descri == e2?.descri &&
        e1?.nome == e2?.nome &&
        e1?.qnt == e2?.qnt;
  }

  @override
  int hash(ProdutosRecord? e) =>
      const ListEquality().hash([e?.img, e?.preco, e?.descri, e?.nome, e?.qnt]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
