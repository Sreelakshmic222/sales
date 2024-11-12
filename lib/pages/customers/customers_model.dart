import 'package:login_page/backend/schema/customer_record.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'customers_widget.dart' show CustomersWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomersModel extends FlutterFlowModel<CustomersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for comname widget.
  FocusNode? comnameFocusNode;
  TextEditingController? comnameTextController;
  String? Function(BuildContext, String?)? comnameTextControllerValidator;
  // State field(s) for cname widget.
  FocusNode? cnameFocusNode;
  TextEditingController? cnameTextController;
  String? Function(BuildContext, String?)? cnameTextControllerValidator;
  // State field(s) for caddtype widget.
  String? caddtypeValue;
  FormFieldController<String>? caddtypeValueController;
  // State field(s) for cadd widget.
  FocusNode? caddFocusNode;
  TextEditingController? caddTextController;
  String? Function(BuildContext, String?)? caddTextControllerValidator;
  // State field(s) for cmob widget.
  FocusNode? cmobFocusNode;
  TextEditingController? cmobTextController;
  String? Function(BuildContext, String?)? cmobTextControllerValidator;
  // State field(s) for cemail widget.
  FocusNode? cemailFocusNode;
  TextEditingController? cemailTextController;
  String? Function(BuildContext, String?)? cemailTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CustomersRecord? custref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    comnameFocusNode?.dispose();
    comnameTextController?.dispose();

    cnameFocusNode?.dispose();
    cnameTextController?.dispose();

    caddFocusNode?.dispose();
    caddTextController?.dispose();

    cmobFocusNode?.dispose();
    cmobTextController?.dispose();

    cemailFocusNode?.dispose();
    cemailTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
