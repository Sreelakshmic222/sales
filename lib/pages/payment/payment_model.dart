import '../../backend/schema/payment_record.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'payment_widget.dart' show PaymentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for paydate widget.
  FocusNode? paydateFocusNode;
  TextEditingController? paydateTextController;
  String? Function(BuildContext, String?)? paydateTextControllerValidator;
  // State field(s) for journal widget.
  String? journalValue;
  FormFieldController<String>? journalValueController;
  // State field(s) for method widget.
  String? methodValue;
  FormFieldController<String>? methodValueController;
  // State field(s) for repbank widget.
  FocusNode? repbankFocusNode;
  TextEditingController? repbankTextController;
  String? Function(BuildContext, String?)? repbankTextControllerValidator;
  // State field(s) for amt widget.
  FocusNode? amtFocusNode;
  TextEditingController? amtTextController;
  String? Function(BuildContext, String?)? amtTextControllerValidator;
  // State field(s) for memo widget.
  FocusNode? memoFocusNode;
  TextEditingController? memoTextController;
  String? Function(BuildContext, String?)? memoTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PaymentsRecord? payref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paydateFocusNode?.dispose();
    paydateTextController?.dispose();

    repbankFocusNode?.dispose();
    repbankTextController?.dispose();

    amtFocusNode?.dispose();
    amtTextController?.dispose();

    memoFocusNode?.dispose();
    memoTextController?.dispose();
  }
}
