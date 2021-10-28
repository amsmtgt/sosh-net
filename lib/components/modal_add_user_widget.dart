import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalAddUserWidget extends StatefulWidget {
  ModalAddUserWidget({
    Key key,
    this.userToAdd,
    this.userToAddID,
  }) : super(key: key);

  final DocumentReference userToAdd;
  final String userToAddID;

  @override
  _ModalAddUserWidgetState createState() => _ModalAddUserWidgetState();
}

class _ModalAddUserWidgetState extends State<ModalAddUserWidget> {
  String radioButton1Value;
  String radioButton2Value;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
        child: FutureBuilder<dynamic>(
          future: getEventsPerUserCall(
            userId: currentUserUid,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitRing(
                    color: FlutterFlowTheme.primaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            final containerGetEventsPerUserResponse = snapshot.data;
            return AuthUserStreamWidget(
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: double.infinity,
                  height: 340,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: FlutterFlowTheme.backgroundcolor1,
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF050211),
                        FlutterFlowTheme.backgroundcolor1
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0.37, -1),
                      end: AlignmentDirectional(-0.37, 1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: FutureBuilder<dynamic>(
                    future: getEventsPerUserCall(
                      userId: widget.userToAddID,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final columnGetEventsPerUserResponse = snapshot.data;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Text(
                              'Add user to your circle?',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.subtitle1,
                            ),
                          ),
                          Visibility(
                            visible: (functions.hasCommonEvents(
                                    containerGetEventsPerUserResponse,
                                    columnGetEventsPerUserResponse)) ==
                                (true),
                            child: FlutterFlowRadioButton(
                              options: ['Inner Circle', 'Outer Circle'],
                              onChanged: (value) {
                                setState(() => radioButton1Value = value);
                              },
                              optionHeight: 40,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontSize: 18,
                              ),
                              selectedTextStyle:
                                  FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 18,
                              ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: FlutterFlowTheme.secondaryColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.tertiaryColor,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Visibility(
                            visible: (functions.hasCommonEvents(
                                    containerGetEventsPerUserResponse,
                                    columnGetEventsPerUserResponse)) ==
                                (false),
                            child: FlutterFlowRadioButton(
                              options: ['Outer Circle'],
                              onChanged: (value) {
                                setState(() => radioButton2Value = value);
                              },
                              optionHeight: 40,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontSize: 18,
                              ),
                              selectedTextStyle:
                                  FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 18,
                              ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: FlutterFlowTheme.secondaryColor,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.tertiaryColor,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  text: 'Cancel',
                                  options: FFButtonOptions(
                                    width: 140,
                                    height: 42,
                                    color: Color(0x002431E4),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet2,
                                      fontSize: 18,
                                    ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.violet2,
                                      width: 2,
                                    ),
                                    borderRadius: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Container(
                                      width: 20,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.primaryColor,
                                            Color(0xFF844DFF)
                                          ],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(1, -0.94),
                                          end: AlignmentDirectional(-1, 0.94),
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Visibility(
                                            visible: (functions.hasCommonEvents(
                                                    containerGetEventsPerUserResponse,
                                                    columnGetEventsPerUserResponse)) ==
                                                (true),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Visibility(
                                                  visible:
                                                      functions.getInnerOuter(
                                                              valueOrDefault<
                                                                  String>(
                                                            radioButton1Value,
                                                            'Inner Circle',
                                                          )) ??
                                                          true,
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() =>
                                                          _loadingButton1 =
                                                              true);
                                                      try {
                                                        final circlesCreateData =
                                                            createCirclesRecordData(
                                                          userId:
                                                              currentUserReference,
                                                          followerId:
                                                              widget.userToAdd,
                                                          addedByUser: true,
                                                          addedByFollower:
                                                              false,
                                                          eventRef: functions
                                                              .getCommonEventsName(
                                                                  containerGetEventsPerUserResponse,
                                                                  columnGetEventsPerUserResponse),
                                                        );
                                                        await CirclesRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                circlesCreateData);

                                                        final usersUpdateData =
                                                            {
                                                          'countRequest':
                                                              FieldValue
                                                                  .increment(1),
                                                          'countInner':
                                                              FieldValue
                                                                  .increment(1),
                                                        };
                                                        await widget.userToAdd
                                                            .update(
                                                                usersUpdateData);
                                                        Navigator.pop(context);
                                                      } finally {
                                                        setState(() =>
                                                            _loadingButton1 =
                                                                false);
                                                      }
                                                    },
                                                    text: 'Add',
                                                    options: FFButtonOptions(
                                                      width: 130,
                                                      height: 40,
                                                      color: Color(0x002431E4),
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily: 'Nunito',
                                                        color: Colors.white,
                                                      ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 12,
                                                    ),
                                                    loading: _loadingButton1,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: functions.getOuterInner(
                                                          radioButton1Value) ??
                                                      true,
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() =>
                                                          _loadingButton2 =
                                                              true);
                                                      try {
                                                        final circlesCreateData =
                                                            createCirclesRecordData(
                                                          userId:
                                                              widget.userToAdd,
                                                          followerId:
                                                              currentUserReference,
                                                          addedByUser: false,
                                                          addedByFollower: true,
                                                        );
                                                        await CirclesRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                circlesCreateData);

                                                        final usersUpdateData =
                                                            {
                                                          'countOuter':
                                                              FieldValue
                                                                  .increment(1),
                                                        };
                                                        await currentUserReference
                                                            .update(
                                                                usersUpdateData);
                                                        Navigator.pop(context);
                                                      } finally {
                                                        setState(() =>
                                                            _loadingButton2 =
                                                                false);
                                                      }
                                                    },
                                                    text: 'Add',
                                                    options: FFButtonOptions(
                                                      width: 130,
                                                      height: 40,
                                                      color: Color(0x002431E4),
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily: 'Nunito',
                                                        color: Colors.white,
                                                      ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 12,
                                                    ),
                                                    loading: _loadingButton2,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: (functions.hasCommonEvents(
                                                    containerGetEventsPerUserResponse,
                                                    columnGetEventsPerUserResponse)) ==
                                                (false),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() =>
                                                    _loadingButton3 = true);
                                                try {
                                                  final circlesCreateData =
                                                      createCirclesRecordData(
                                                    userId: widget.userToAdd,
                                                    followerId:
                                                        currentUserReference,
                                                    addedByUser: false,
                                                    addedByFollower: true,
                                                  );
                                                  await CirclesRecord.collection
                                                      .doc()
                                                      .set(circlesCreateData);

                                                  final usersUpdateData = {
                                                    'countOuter':
                                                        FieldValue.increment(1),
                                                  };
                                                  await currentUserReference
                                                      .update(usersUpdateData);
                                                  Navigator.pop(context);
                                                } finally {
                                                  setState(() =>
                                                      _loadingButton3 = false);
                                                }
                                              },
                                              text: 'Add',
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color: Color(0x002431E4),
                                                textStyle: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 12,
                                              ),
                                              loading: _loadingButton3,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
