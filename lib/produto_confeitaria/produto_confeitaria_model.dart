import '/flutter_flow/flutter_flow_util.dart';
import 'produto_confeitaria_widget.dart' show ProdutoConfeitariaWidget;
import 'package:flutter/material.dart';

class ProdutoConfeitariaModel
    extends FlutterFlowModel<ProdutoConfeitariaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
