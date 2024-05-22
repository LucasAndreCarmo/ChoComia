import '/flutter_flow/flutter_flow_util.dart';
import 'produtocesta_widget.dart' show ProdutocestaWidget;
import 'package:flutter/material.dart';

class ProdutocestaModel extends FlutterFlowModel<ProdutocestaWidget> {
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
