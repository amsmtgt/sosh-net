import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/modal_hostevent_guestlimit_widget.dart';
import '../components/modal_hostevent_privacy_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../host_event3/host_event3_widget.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HostEvent2Widget extends StatefulWidget {
  HostEvent2Widget({
    Key key,
    this.titleEvent,
    this.descriptionEvent,
    this.locationEvent,
    this.dateEventStart,
    this.dateEventEnd,
    this.photoEvent,
  }) : super(key: key);

  final String titleEvent;
  final String descriptionEvent;
  final String locationEvent;
  final DateTime dateEventStart;
  final DateTime dateEventEnd;
  final String photoEvent;

  @override
  _HostEvent2WidgetState createState() => _HostEvent2WidgetState();
}

class _HostEvent2WidgetState extends State<HostEvent2Widget> {
  bool _loadingButton = false;
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          List<UsersRecord> hostEvent2UsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final hostEvent2UsersRecord = hostEvent2UsersRecordList.isNotEmpty
              ? hostEvent2UsersRecordList.first
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
                    FlutterFlowTheme.backgroundcolor2
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0.37, -1),
                  end: AlignmentDirectional(-0.37, 1),
                ),
              ),
              child: StreamBuilder<List<EventsRecord>>(
                stream: queryEventsRecord(
                  queryBuilder: (eventsRecord) => eventsRecord
                      .where('owner',
                          isEqualTo: hostEvent2UsersRecord.reference)
                      .where('name', isEqualTo: widget.titleEvent)
                      .where('description', isEqualTo: widget.descriptionEvent)
                      .where('start_date_event',
                          isEqualTo: widget.dateEventStart)
                      .where('end_date_event', isEqualTo: widget.dateEventEnd),
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
                  List<EventsRecord> columnEventsRecordList = snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final columnEventsRecord = columnEventsRecordList.isNotEmpty
                      ? columnEventsRecordList.first
                      : null;
                  return Column(
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        'Host event',
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
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.violet1,
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
                          width: 400,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 10),
                                  child: Text(
                                    'Preferences',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet2,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Color(0x4D110D30),
                                        barrierColor: Color(0x4D110D30),
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 460,
                                            child: ModalHosteventPrivacyWidget(
                                              refEvent:
                                                  columnEventsRecord.reference,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.shadow,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0x6A2431E4),
                                                        Color(0x14080618)
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              -0.64, 1),
                                                      end: AlignmentDirectional(
                                                          0.64, -1),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Icon(
                                                    Icons.lock_outlined,
                                                    color:
                                                        FlutterFlowTheme.blue1,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Text(
                                                    'Privacy',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    columnEventsRecord
                                                        .privacyType,
                                                    'Open private',
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FlutterFlowTheme
                                                        .violet1,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.shadow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0x6A2431E4),
                                                      Color(0x14080618)
                                                    ],
                                                    stops: [0, 1],
                                                    begin: AlignmentDirectional(
                                                        -0.64, 1),
                                                    end: AlignmentDirectional(
                                                        0.64, -1),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(7, 7, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .addressCard,
                                                    color:
                                                        FlutterFlowTheme.blue1,
                                                    size: 18,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: SwitchListTile(
                                                value: switchListTileValue ??=
                                                    false,
                                                onChanged: (newValue) =>
                                                    setState(() =>
                                                        switchListTileValue =
                                                            newValue),
                                                title: Text(
                                                  '+21',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                subtitle: Text(
                                                  'Optional',
                                                  style: FlutterFlowTheme
                                                      .subtitle2
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                tileColor:
                                                    FlutterFlowTheme.blue1,
                                                activeColor: FlutterFlowTheme
                                                    .secondaryColor,
                                                activeTrackColor:
                                                    FlutterFlowTheme.violet2,
                                                dense: false,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Color(0x4D110D30),
                                        barrierColor: Color(0x4D110D30),
                                        context: context,
                                        builder: (context) {
                                          return ModalHosteventGuestlimitWidget(
                                            refEvent:
                                                columnEventsRecord.reference,
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.shadow,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0x6A2431E4),
                                                        Color(0x14080618)
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              -0.64, 1),
                                                      end: AlignmentDirectional(
                                                          0.64, -1),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .person_remove_outlined,
                                                    color:
                                                        FlutterFlowTheme.blue1,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Guest limit',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Optional',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 14,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    columnEventsRecord
                                                        .guestCount
                                                        .toString(),
                                                    '100',
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FlutterFlowTheme
                                                        .violet1,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
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
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 5, 15, 25),
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
                                    final eventsUpdateData =
                                        createEventsRecordData(
                                      isPlus21: switchListTileValue,
                                    );
                                    await columnEventsRecord.reference
                                        .update(eventsUpdateData);
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HostEvent3Widget(
                                          refEvent:
                                              columnEventsRecord.reference,
                                        ),
                                      ),
                                    );
                                  } finally {
                                    setState(() => _loadingButton = false);
                                  }
                                },
                                text: 'Continue',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40,
                                  color: Color(0x003A2EE8),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.white,
                                    fontSize: 18,
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
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.blue1,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.blue1,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.blue1,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.blue1,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
