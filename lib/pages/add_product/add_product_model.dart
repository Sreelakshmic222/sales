import 'package:login_page/backend/schema/product_record.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_product_widget.dart' show AddProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ptype widget.
  String? ptypeValue;
  FormFieldController<String>? ptypeValueController;
  // State field(s) for sold widget.
  bool? soldValue;
  // State field(s) for purchase widget.
  bool? purchaseValue;
  // State field(s) for pname widget.
  FocusNode? pnameFocusNode;
  TextEditingController? pnameTextController;
  String? Function(BuildContext, String?)? pnameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? pdocref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pnameFocusNode?.dispose();
    pnameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
