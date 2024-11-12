import '../../backend/schema/quotation_record.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'new_quotation_model.dart';
export 'new_quotation_model.dart';

class NewQuotationWidget extends StatefulWidget {
  const NewQuotationWidget({super.key});

  @override
  State<NewQuotationWidget> createState() => _NewQuotationWidgetState();
}

class _NewQuotationWidgetState extends State<NewQuotationWidget> {
  late NewQuotationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewQuotationModel());

    _model.custnameTextController ??= TextEditingController();
    _model.custnameFocusNode ??= FocusNode();

    _model.invaddTextController ??= TextEditingController();
    _model.invaddFocusNode ??= FocusNode();

    _model.qntyTextController ??= TextEditingController();
    _model.qntyFocusNode ??= FocusNode();

    _model.upTextController ??= TextEditingController();
    _model.upFocusNode ??= FocusNode();

    _model.totalTextController ??= TextEditingController();
    _model.totalFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Quotation',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Jaldi',
                              letterSpacing: 0.0,
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Date',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Text(
                                    '11/11/2024',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Customer',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          75, 0, 0, 0),
                                      child: Container(
                                        width: 200,
                                        child: TextFormField(
                                          controller:
                                          _model.custnameTextController,
                                          focusNode: _model.custnameFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            hintText: 'Enter the customer Name',
                                            hintStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                          cursorColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                          validator: _model
                                              .custnameTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Invoice Address',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          45, 0, 0, 0),
                                      child: Container(
                                        width: 200,
                                        child: TextFormField(
                                          controller:
                                          _model.invaddTextController,
                                          focusNode: _model.invaddFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            hintText: 'TextField',
                                            hintStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                          cursorColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                          validator: _model
                                              .invaddTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment Terms',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          45, 0, 0, 0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                            .dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          'Net Banking',
                                          'UPI',
                                          'Other'
                                        ],
                                        onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue1 = val),
                                        width: 200,
                                        height: 40,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Jaldi',
                                          letterSpacing: 0.0,
                                        ),
                                        hintText: 'Select...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2,
                                        borderColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        borderWidth: 0,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Product',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          85, 0, 0, 0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                            .dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                        options: [''],
                                        onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue2 = val),
                                        width: 200,
                                        height: 40,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                        hintText: 'Product',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2,
                                        borderColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        borderWidth: 0,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Qnty',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Jaldi',
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            95, 0, 0, 0),
                                        child: Container(
                                          width: 200,
                                          child: TextFormField(
                                            controller:
                                            _model.qntyTextController,
                                            focusNode: _model.qntyFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                fontFamily: 'Jaldi',
                                                letterSpacing: 0.0,
                                              ),
                                              hintText: 'Enter quantity',
                                              hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                fontFamily: 'Jaldi',
                                                letterSpacing: 0.0,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .error,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .error,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                            cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                            validator: _model
                                                .qntyTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Unit Price ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          65, 0, 0, 0),
                                      child: Container(
                                        width: 200,
                                        child: TextFormField(
                                          controller: _model.upTextController,
                                          focusNode: _model.upFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                                '_model.upTextController',
                                                Duration(milliseconds: 0),
                                                    () => safeSetState(() {}),
                                              ),
                                          autofocus: false,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            hintStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Jaldi',
                                              letterSpacing: 0.0,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                          cursorColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                          validator: _model
                                              .upTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Jaldi',
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            90, 0, 0, 0),
                                        child: Container(
                                          width: 200,
                                          child: TextFormField(
                                            controller:
                                            _model.totalTextController,
                                            focusNode: _model.totalFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                                  '_model.totalTextController',
                                                  Duration(milliseconds: 0),
                                                      () => safeSetState(() {}),
                                                ),
                                            autofocus: false,
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: (int.parse(_model
                                                  .qntyTextController
                                                  .text) *
                                                  int.parse(_model
                                                      .upTextController
                                                      .text))
                                                  .toString(),
                                              labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                fontFamily: 'Jaldi',
                                                letterSpacing: 0.0,
                                              ),
                                              hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                fontFamily: 'Jaldi',
                                                letterSpacing: 0.0,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .error,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .error,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                            cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                            validator: _model
                                                .totalTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var quotationsRecordReference =
                                    QuotationsRecord.collection.doc();
                                    await quotationsRecordReference
                                        .set(createQuotationRecordData(
                                      customer:
                                      _model.custnameTextController.text,
                                      invoiceadd:
                                      _model.invaddTextController.text,
                                      payter: _model.dropDownValue1,
                                      product: _model.dropDownValue2,
                                      qnty: _model.qntyTextController.text,
                                      qid: random_data.randomString(
                                        10,
                                        20,
                                        true,
                                        false,
                                        false,
                                      ),
                                    ));
                                    _model.quoref =
                                        QuotationsRecord.getDocumentFromData(
                                            createQuotationRecordData(
                                              customer: _model
                                                  .custnameTextController.text,
                                              invoiceadd: _model
                                                  .invaddTextController.text,
                                              payter: _model.dropDownValue1,
                                              product: _model.dropDownValue2,
                                              qnty: _model
                                                  .qntyTextController.text,
                                              qid: random_data.randomString(
                                                10,
                                                20,
                                                true,
                                                false,
                                                false,
                                              ),
                                            ),
                                            quotationsRecordReference);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Quotation Added Sucessfully',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                    );

                                    context.pushNamed(
                                      'Payment',
                                      queryParameters: {
                                        'quoref': serializeParam(
                                          _model.quoref?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    safeSetState(() {});
                                  },
                                  text: 'Create Quotation',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Jaldi',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
