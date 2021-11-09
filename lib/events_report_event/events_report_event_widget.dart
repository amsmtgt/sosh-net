import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/modal_reportevent_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsReportEventWidget extends StatefulWidget {
  EventsReportEventWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _EventsReportEventWidgetState createState() =>
      _EventsReportEventWidgetState();
}

class _EventsReportEventWidgetState extends State<EventsReportEventWidget> {
  String dropDownValue;
  TextEditingController textController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      child: StreamBuilder<List<UsersRecord>>(
        stream: queryUsersRecord(
          queryBuilder: (usersRecord) =>
              usersRecord.where('uid', isEqualTo: currentUserUid),
          singleRecord: true,
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
          List<UsersRecord> eventsReportEventUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final eventsReportEventUsersRecord =
              eventsReportEventUsersRecordList.isNotEmpty
                  ? eventsReportEventUsersRecordList.first
                  : null;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.shadow,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.backgroundcolor1,
                    FlutterFlowTheme.shadow
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0.37, -1),
                  end: AlignmentDirectional(-0.37, 1),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 45, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                buttonSize: 46,
                                icon: Icon(
                                  Icons.close,
                                  color: FlutterFlowTheme.secondaryColor,
                                  size: 25,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Why do you want to\nreport this event?',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.subtitle1,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Text(
                                  'Select an option',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.white2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                          FlutterFlowDropDown(
                            options: [
                              'Spam',
                              'Fraud or scam',
                              'Bullying',
                              'Fake events',
                              'Suicide or self harm',
                              'Violence',
                              'Hateful language',
                              'Infringement of intellectual property',
                              'Nudity or sexual activity'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => dropDownValue = val),
                            width: 345,
                            height: 40,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            fillColor: FlutterFlowTheme.shadow,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 10,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                            hidesUnderline: true,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Text(
                                    'Write a comment',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.white2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          TextFormField(
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.shadow,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  10, 15, 10, 10),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                            maxLines: 10,
                            keyboardType: TextInputType.multiline,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 0, 60, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
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
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() => _loadingButton = true);
                                          try {
                                            final incidentCreateData =
                                                createIncidentRecordData(
                                              event: widget.refEvent,
                                              type: dropDownValue,
                                              comment: textController.text,
                                              dateReported: getCurrentTimestamp,
                                              status: 'Open',
                                              reportedBy: currentUserEmail,
                                            );
                                            await IncidentRecord.collection
                                                .doc()
                                                .set(incidentCreateData);
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Color(0x4D080618),
                                              barrierColor: Color(0x4D080618),
                                              context: context,
                                              builder: (context) {
                                                return ModalReporteventWidget(
                                                  type: dropDownValue,
                                                );
                                              },
                                            );
                                          } finally {
                                            setState(
                                                () => _loadingButton = false);
                                          }
                                        },
                                        text: 'Send',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 40,
                                          color: Color(0x003A2EE8),
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                        loading: _loadingButton,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
