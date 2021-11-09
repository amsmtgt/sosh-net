import '../backend/backend.dart';
import '../events_detail_host/events_detail_host_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../send_invitations_inner_circle/send_invitations_inner_circle_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class HostEventInvitationsWidget extends StatefulWidget {
  HostEventInvitationsWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _HostEventInvitationsWidgetState createState() =>
      _HostEventInvitationsWidgetState();
}

class _HostEventInvitationsWidgetState
    extends State<HostEventInvitationsWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventsRecord>(
      stream: EventsRecord.getDocument(widget.refEvent),
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
        final hostEventInvitationsEventsRecord = snapshot.data;
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
                  FlutterFlowTheme.backgroundcolor2
                ],
                stops: [0, 1],
                begin: AlignmentDirectional(0.37, -1),
                end: AlignmentDirectional(-0.37, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 44, 15, 0),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'HOME'),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/check.png',
                                  width: 151,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 25, 0, 5),
                                    child: Text(
                                      'Your event has been created',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    hostEventInvitationsEventsRecord.name,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet2,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Event Code: ${valueOrDefault<String>(
                                        hostEventInvitationsEventsRecord
                                            .eventCode,
                                        '0000',
                                      )}',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.violet2,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(50, 30, 50, 60),
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
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SendInvitationsInnerCircleWidget(
                                          refEvent: widget.refEvent,
                                        ),
                                      ),
                                    );
                                  } finally {
                                    setState(() => _loadingButton = false);
                                  }
                                },
                                text: 'Send invitations',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40,
                                  color: Color(0x003A2EE8),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EventsDetailHostWidget(),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(
                                    'View event',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.secondaryColor,
                                    size: 20,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 2, 15, 0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                title: Text(
                                  'Edit event',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.secondaryColor,
                                  size: 20,
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    15, 2, 15, 0),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Share.share(
                                      'https://www.apple.com/app-store/');
                                },
                                child: ListTile(
                                  title: Text(
                                    'Share link',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 2, 15, 0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
