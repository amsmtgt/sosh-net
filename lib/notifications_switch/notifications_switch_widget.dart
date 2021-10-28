import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsSwitchWidget extends StatefulWidget {
  NotificationsSwitchWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _NotificationsSwitchWidgetState createState() =>
      _NotificationsSwitchWidgetState();
}

class _NotificationsSwitchWidgetState extends State<NotificationsSwitchWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  bool switchListTileValue3;
  bool switchListTileValue4;
  bool switchListTileValue5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.shadow,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [FlutterFlowTheme.backgroundcolor1, Color(0xFF0E0B47)],
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
                              Icons.arrow_back_ios_rounded,
                              color: FlutterFlowTheme.secondaryColor,
                              size: 25,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                          Expanded(
                            child: Text(
                              'Notifications',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.subtitle2,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'HOME'),
                                ),
                              );
                            },
                            child: Text(
                              'Cancel',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: Color(0x00A982FF),
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
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 25),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF250C75), Color(0xFF120F4B)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(1, -0.98),
                                end: AlignmentDirectional(-1, 0.98),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SwitchListTile(
                                    value: switchListTileValue1 ??= true,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue1 = newValue),
                                    title: Text(
                                      'Push notifications',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor:
                                        FlutterFlowTheme.secondaryColor,
                                    activeTrackColor: FlutterFlowTheme.violet2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.shadow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SwitchListTile(
                                    value: switchListTileValue2 ??= false,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue2 = newValue),
                                    title: Text(
                                      'Event invitations',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor:
                                        FlutterFlowTheme.secondaryColor,
                                    activeTrackColor: FlutterFlowTheme.violet2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.shadow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SwitchListTile(
                                    value: switchListTileValue3 ??= true,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue3 = newValue),
                                    title: Text(
                                      'My upcoming events',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor:
                                        FlutterFlowTheme.secondaryColor,
                                    activeTrackColor: FlutterFlowTheme.violet2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.shadow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SwitchListTile(
                                    value: switchListTileValue4 ??= false,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue4 = newValue),
                                    title: Text(
                                      'Requests for my events',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor:
                                        FlutterFlowTheme.secondaryColor,
                                    activeTrackColor: FlutterFlowTheme.violet2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.shadow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SwitchListTile(
                                    value: switchListTileValue5 ??= false,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue5 = newValue),
                                    title: Text(
                                      'Inner circle request',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor:
                                        FlutterFlowTheme.secondaryColor,
                                    activeTrackColor: FlutterFlowTheme.violet2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                )
                              ],
                            ),
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
