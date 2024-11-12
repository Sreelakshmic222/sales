import 'package:login_page/backend/schema/quotation_record.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'new_quotation_widget.dart' show NewQuotationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewQuotationModel extends FlutterFlowModel<NewQuotationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for custname widget.
  FocusNode? custnameFocusNode;
  TextEditingController? custnameTextController;
  String? Function(BuildContext, String?)? custnameTextControllerValidator;
  // State field(s) for invadd widget.
  FocusNode? invaddFocusNode;
  TextEditingController? invaddTextController;
  String? Function(BuildContext, String?)? invaddTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for qnty widget.
  FocusNode? qntyFocusNode;
  TextEditingController? qntyTextController;
  String? Function(BuildContext, String?)? qntyTextControllerValidator;
  // State field(s) for up widget.
  FocusNode? upFocusNode;
  TextEditingController? upTextController;
  String? Function(BuildContext, String?)? upTextControllerValidator;
  // State field(s) for total widget.
  FocusNode? totalFocusNode;
  TextEditingController? totalTextController;
  String? Function(BuildContext, String?)? totalTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  QuotationsRecord? quoref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    custnameFocusNode?.dispose();
    custnameTextController?.dispose();

    invaddFocusNode?.dispose();
    invaddTextController?.dispose();

    qntyFocusNode?.dispose();
    qntyTextController?.dispose();

    upFocusNode?.dispose();
    upTextController?.dispose();

    totalFocusNode?.dispose();
    totalTextController?.dispose();
  }
}
