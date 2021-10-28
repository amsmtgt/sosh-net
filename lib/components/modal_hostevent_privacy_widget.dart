import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalHosteventPrivacyWidget extends StatefulWidget {
  ModalHosteventPrivacyWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ModalHosteventPrivacyWidgetState createState() =>
      _ModalHosteventPrivacyWidgetState();
}

class _ModalHosteventPrivacyWidgetState
    extends State<ModalHosteventPrivacyWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 1),
      child: Container(
        width: double.infinity,
        height: 460,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF050211), FlutterFlowTheme.backgroundcolor1],
            stops: [0, 1],
            begin: AlignmentDirectional(0.37, -1),
            end: AlignmentDirectional(-0.37, 1),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.secondaryColor,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 15),
              child: Text(
                'Select event privacy',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.subtitle2,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: InkWell(
                onTap: () async {
                  final eventsUpdateData = createEventsRecordData(
                    privacyType: 'Close private',
                  );
                  await widget.refEvent.update(eventsUpdateData);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.shadow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x6A2431E4), Color(0x14080618)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-0.64, 1),
                              end: AlignmentDirectional(0.64, -1),
                            ),
                            borderRadius: BorderRadius.circular(11),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.lock_outline,
                            color: FlutterFlowTheme.blue1,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Close private',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  'Only invited people',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: InkWell(
                onTap: () async {
                  final eventsUpdateData = createEventsRecordData(
                    privacyType: 'Open private',
                  );
                  await widget.refEvent.update(eventsUpdateData);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.shadow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x6A2431E4), Color(0x14080618)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-0.64, 1),
                              end: AlignmentDirectional(0.64, -1),
                            ),
                            borderRadius: BorderRadius.circular(11),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.lock_outline,
                            color: FlutterFlowTheme.blue1,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Open private',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  'Only my inner circle',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: InkWell(
                onTap: () async {
                  final eventsUpdateData = createEventsRecordData(
                    privacyType: 'Public',
                  );
                  await widget.refEvent.update(eventsUpdateData);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.shadow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x6A2431E4), Color(0x14080618)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-0.64, 1),
                              end: AlignmentDirectional(0.64, -1),
                            ),
                            borderRadius: BorderRadius.circular(11),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.lock_open,
                            color: FlutterFlowTheme.blue1,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Public',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  'Inner and outer circle',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
