import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sports_and_ec_selection_model.dart';
export 'sports_and_ec_selection_model.dart';

class SportsAndEcSelectionWidget extends StatefulWidget {
  const SportsAndEcSelectionWidget({Key? key}) : super(key: key);

  @override
  _SportsAndEcSelectionWidgetState createState() =>
      _SportsAndEcSelectionWidgetState();
}

class _SportsAndEcSelectionWidgetState
    extends State<SportsAndEcSelectionWidget> {
  late SportsAndEcSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportsAndEcSelectionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update({
        ...mapToFirestore(
          {
            'sports': _model.dropDownValue,
          },
        ),
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -0.70),
                child: Text(
                  'Select which sports you play.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 40.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, -0.40),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: [
                    'Cross Country',
                    'Field Hockey',
                    'Football',
                    'Soccer',
                    'Volleyball',
                    'Water Polo',
                    'Basketball',
                    'Bowling',
                    'Fencing',
                    'Gymnastics',
                    'Ice Hockey',
                    'Rifle',
                    'Skiing',
                    'Swimming',
                    'Track & Feild',
                    'Wrestling',
                    'Baseball',
                    'Beach Volleyball',
                    'Golf',
                    'Lacrosse',
                    'Rowing',
                    'Softball',
                    'Tennis'
                  ],
                  onChanged: null,
                  width: 300.0,
                  height: 50.0,
                  searchHintTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Outfit',
                          ),
                  textStyle: FlutterFlowTheme.of(context).bodyLarge,
                  hintText: 'None',
                  searchHintText: 'Search for a sport...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: true,
                  isMultiSelect: true,
                  onChangedForMultiSelect: (val) =>
                      setState(() => _model.dropDownValue = val),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.73),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await currentUserReference!.update({
                        ...mapToFirestore(
                          {
                            'sports': _model.dropDownValue,
                          },
                        ),
                      });

                      context.pushNamed('profile');
                    },
                    text: 'Next',
                    options: FFButtonOptions(
                      width: 200.0,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFD3000A),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
