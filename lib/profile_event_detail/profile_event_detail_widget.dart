import '../backend/backend.dart';
import '../components/modal_event_options_widget.dart';
import '../events_detail_host/events_detail_host_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_atendees/profile_atendees_widget.dart';
import '../profile_events_mark_attendance/profile_events_mark_attendance_widget.dart';
import '../profile_host_request/profile_host_request_widget.dart';
import '../profile_invitations_sent/profile_invitations_sent_widget.dart';
import '../profile_m_y_e_v_e_n_t_s/profile_m_y_e_v_e_n_t_s_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileEventDetailWidget extends StatefulWidget {
  ProfileEventDetailWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ProfileEventDetailWidgetState createState() =>
      _ProfileEventDetailWidgetState();
}

class _ProfileEventDetailWidgetState extends State<ProfileEventDetailWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
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
        final profileEventDetailEventsRecord = snapshot.data;
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
            child: Stack(
              children: [
                Column(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    buttonSize: 46,
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: FlutterFlowTheme.secondaryColor,
                                      size: 25,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileMYEVENTSWidget(),
                                        ),
                                      );
                                    },
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 40, 0),
                                      child: Text(
                                        'Event details',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.subtitle2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 110, 0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 6, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        profileEventDetailEventsRecord.name,
                                        textAlign: TextAlign.start,
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: Row(
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
                                                AlignmentDirectional(-0.64, 1),
                                            end: AlignmentDirectional(0.64, -1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          color: FlutterFlowTheme.blue1,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Text(
                                          profileEventDetailEventsRecord
                                              .location,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.bodyText2
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 20),
                                  child: Row(
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
                                                AlignmentDirectional(-0.64, 1),
                                            end: AlignmentDirectional(0.64, -1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.calendar_today_outlined,
                                          color: FlutterFlowTheme.blue1,
                                          size: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Text(
                                          '${dateTimeFormat('yMMMd', profileEventDetailEventsRecord.startDateEvent)} at ${profileEventDetailEventsRecord.startDateEvent.toString()}',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.bodyText2
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            setState(
                                                () => _loadingButton1 = true);
                                            try {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      EventsDetailHostWidget(
                                                    refEvemt: widget.refEvent,
                                                  ),
                                                ),
                                              );
                                            } finally {
                                              setState(() =>
                                                  _loadingButton1 = false);
                                            }
                                          },
                                          text: 'View event',
                                          options: FFButtonOptions(
                                            width: 170,
                                            height: 33,
                                            color: Color(0x005764FF),
                                            textStyle: FlutterFlowTheme
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet1,
                                              fontSize: 15,
                                            ),
                                            borderSide: BorderSide(
                                              color: Color(0x00CEB8FF),
                                              width: 1,
                                            ),
                                            borderRadius: 50,
                                          ),
                                          loading: _loadingButton1,
                                        ),
                                      ),
                                      Container(
                                        width: 170,
                                        height: 33,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            setState(
                                                () => _loadingButton2 = true);
                                            try {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Color(0x4D080618),
                                                barrierColor: Color(0x4D080618),
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    height: 300,
                                                    child:
                                                        ModalEventOptionsWidget(
                                                      refEvent: widget.refEvent,
                                                    ),
                                                  );
                                                },
                                              );
                                            } finally {
                                              setState(() =>
                                                  _loadingButton2 = false);
                                            }
                                          },
                                          text: 'Manage event',
                                          options: FFButtonOptions(
                                            width: 106,
                                            height: 35,
                                            color: Color(0x005764FF),
                                            textStyle: FlutterFlowTheme
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet1,
                                              fontSize: 15,
                                            ),
                                            borderSide: BorderSide(
                                              color: FlutterFlowTheme.violet1,
                                              width: 1,
                                            ),
                                            borderRadius: 50,
                                          ),
                                          loading: _loadingButton2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 40, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Statistics',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.shadow,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 15, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileInvitationsSentWidget(
                                                        refEvent:
                                                            widget.refEvent,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: 35,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0x6A2431E4),
                                                                  Color(
                                                                      0x14080618)
                                                                ],
                                                                stops: [0, 1],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        -0.64,
                                                                        1),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0.64,
                                                                        -1),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          11),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .mail_outline,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .blue1,
                                                              size: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Invitations sent',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 5, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '30',
                                                            textAlign:
                                                                TextAlign.end,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: Color(
                                                                  0xFFCEB8FF),
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: Color(
                                                                  0xFFA982FF),
                                                              size: 18,
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
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfileHostRequestWidget(
                                                    refEvent: widget.refEvent,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.shadow,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 15, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: 35,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0x6A2431E4),
                                                                  Color(
                                                                      0x14080618)
                                                                ],
                                                                stops: [0, 1],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        -0.64,
                                                                        1),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0.64,
                                                                        -1),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          11),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .person_add_outlined,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .blue1,
                                                              size: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Requests',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 5, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '50',
                                                            textAlign:
                                                                TextAlign.end,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: Color(
                                                                  0xFFCEB8FF),
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .violet1,
                                                              size: 18,
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
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.shadow,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 15, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileAtendeesWidget(
                                                        refEvent:
                                                            widget.refEvent,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: 35,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0x6A2431E4),
                                                                  Color(
                                                                      0x14080618)
                                                                ],
                                                                stops: [0, 1],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        -0.64,
                                                                        1),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0.64,
                                                                        -1),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          11),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .people_outlined,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .blue1,
                                                              size: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Attendees',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 5, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            profileEventDetailEventsRecord
                                                                .grantedTickets
                                                                .toString(),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: Color(
                                                                  0xFFCEB8FF),
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .violet1,
                                                              size: 18,
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
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 30, 15, 10),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.primaryColor,
                                          FlutterFlowTheme.secondaryColor
                                        ],
                                        stops: [0, 1],
                                        begin: AlignmentDirectional(1, -0.94),
                                        end: AlignmentDirectional(-1, 0.94),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        setState(() => _loadingButton3 = true);
                                        try {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfileEventsMarkAttendanceWidget(),
                                            ),
                                          );
                                        } finally {
                                          setState(
                                              () => _loadingButton3 = false);
                                        }
                                      },
                                      text: 'Mark attendance',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 40,
                                        color: Color(0x003A2EE8),
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                      loading: _loadingButton3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Activity',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Colors.transparent,
                                              elevation: 0,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 15),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 50,
                                                              height: 50,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/839/600',
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Marie will attend your event.',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1,
                                                                ),
                                                                Text(
                                                                  '3 days ago',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .violet2,
                                                                    fontSize:
                                                                        13,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 1,
                                                    thickness: 1,
                                                    color: Color(0x59666FEC),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Colors.transparent,
                                              elevation: 0,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 15),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 50,
                                                              height: 50,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/839/600',
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Dana accepted your invitation to the event.',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1,
                                                                ),
                                                                Text(
                                                                  '3 days ago',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .violet2,
                                                                    fontSize:
                                                                        13,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 1,
                                                    thickness: 1,
                                                    color: Color(0x58666FEC),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Colors.transparent,
                                              elevation: 0,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 15),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 50,
                                                              height: 50,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/839/600',
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Ellie made the payment to your event.',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1,
                                                                ),
                                                                Text(
                                                                  '3 days ago',
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .violet2,
                                                                    fontSize:
                                                                        13,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 1,
                                                    thickness: 1,
                                                    color: Color(0x58666FEC),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
