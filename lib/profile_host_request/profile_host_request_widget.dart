import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHostRequestWidget extends StatefulWidget {
  ProfileHostRequestWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ProfileHostRequestWidgetState createState() =>
      _ProfileHostRequestWidgetState();
}

class _ProfileHostRequestWidgetState extends State<ProfileHostRequestWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  bool _loadingButton7 = false;
  bool _loadingButton8 = false;
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
            colors: [
              FlutterFlowTheme.backgroundcolor1,
              FlutterFlowTheme.shadow
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
                              Navigator.pop(context);
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                              child: Text(
                                'Requests',
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
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.violet1,
                      unselectedLabelColor: FlutterFlowTheme.tertiaryColor,
                      labelStyle: GoogleFonts.getFont(
                        'Nunito',
                      ),
                      indicatorColor: FlutterFlowTheme.violet1,
                      indicatorWeight: 2,
                      tabs: [
                        Tab(
                          text: 'Pending',
                        ),
                        Tab(
                          text: 'All requests',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                            child: StreamBuilder<List<EventTicketsRecord>>(
                              stream: queryEventTicketsRecord(
                                queryBuilder: (eventTicketsRecord) =>
                                    eventTicketsRecord
                                        .where('Event',
                                            isEqualTo: widget.refEvent)
                                        .where('approved', isEqualTo: false)
                                        .where('status', isEqualTo: 'Pending'),
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
                                List<EventTicketsRecord>
                                    listViewEventTicketsRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewEventTicketsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewEventTicketsRecord =
                                        listViewEventTicketsRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 15),
                                      child: StreamBuilder<UsersRecord>(
                                        stream: UsersRecord.getDocument(
                                            listViewEventTicketsRecord.user),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitRing(
                                                  color: FlutterFlowTheme
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final columnUsersRecord =
                                              snapshot.data;
                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 20),
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
                                                          Container(
                                                            width: 40,
                                                            height: 40,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              columnUsersRecord
                                                                  .photoUrl,
                                                              fit: BoxFit
                                                                  .fitHeight,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  columnUsersRecord
                                                                      .displayName,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(60, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                setState(() =>
                                                                    _loadingButton1 =
                                                                        true);
                                                                try {
                                                                  final eventTicketsUpdateData =
                                                                      createEventTicketsRecordData(
                                                                    status:
                                                                        'Rejected',
                                                                  );
                                                                  await listViewEventTicketsRecord
                                                                      .reference
                                                                      .update(
                                                                          eventTicketsUpdateData);
                                                                } finally {
                                                                  setState(() =>
                                                                      _loadingButton1 =
                                                                          false);
                                                                }
                                                              },
                                                              text: 'Remove',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 75,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 14,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFCEB8FF),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton1,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.4, 0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 75,
                                                                  height: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme
                                                                            .primaryColor,
                                                                        Color(
                                                                            0xFF844DFF)
                                                                      ],
                                                                      stops: [
                                                                        0,
                                                                        1
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1,
                                                                          -0.94),
                                                                      end: AlignmentDirectional(
                                                                          -1,
                                                                          0.94),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.05,
                                                                            0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        setState(() =>
                                                                            _loadingButton2 =
                                                                                true);
                                                                        try {
                                                                          final eventTicketsUpdateData =
                                                                              createEventTicketsRecordData(
                                                                            status:
                                                                                'Approved',
                                                                            approved:
                                                                                true,
                                                                          );
                                                                          await listViewEventTicketsRecord
                                                                              .reference
                                                                              .update(eventTicketsUpdateData);
                                                                        } finally {
                                                                          setState(() =>
                                                                              _loadingButton2 = false);
                                                                        }
                                                                      },
                                                                      text:
                                                                          'Accept',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            75,
                                                                        height:
                                                                            35,
                                                                        color: Color(
                                                                            0x00844DFF),
                                                                        textStyle: FlutterFlowTheme
                                                                            .subtitle2
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            100,
                                                                      ),
                                                                      loading:
                                                                          _loadingButton2,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  thickness: 1,
                                                  color:
                                                      FlutterFlowTheme.shadow,
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child:
                                      StreamBuilder<List<EventTicketsRecord>>(
                                    stream: queryEventTicketsRecord(
                                      queryBuilder: (eventTicketsRecord) =>
                                          eventTicketsRecord
                                              .where('Event',
                                                  isEqualTo: widget.refEvent)
                                              .where('approved',
                                                  isEqualTo: true)
                                              .where('approvedByUser',
                                                  isEqualTo: true)
                                              .where('status',
                                                  isEqualTo: 'Approved'),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitRing(
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<EventTicketsRecord>
                                          listViewEventTicketsRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewEventTicketsRecordList
                                                .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewEventTicketsRecord =
                                              listViewEventTicketsRecordList[
                                                  listViewIndex];
                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 15),
                                                  child: StreamBuilder<
                                                      UsersRecord>(
                                                    stream: UsersRecord.getDocument(
                                                        listViewEventTicketsRecord
                                                            .user),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child: SpinKitRing(
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              size: 50,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnUsersRecord =
                                                          snapshot.data;
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          20),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            40,
                                                                        height:
                                                                            40,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child: Image
                                                                            .network(
                                                                          columnUsersRecord
                                                                              .photoUrl,
                                                                          fit: BoxFit
                                                                              .fitHeight,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              columnUsersRecord.displayName,
                                                                              style: FlutterFlowTheme.bodyText1.override(
                                                                                fontFamily: 'Nunito',
                                                                                fontSize: 15,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            60,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Approved',
                                                                          style: FlutterFlowTheme
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                FlutterFlowTheme.violet1,
                                                                            fontSize:
                                                                                14,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'Rejected',
                                                                          style: FlutterFlowTheme
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                FlutterFlowTheme.violet1,
                                                                            fontSize:
                                                                                14,
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1,
                                                              thickness: 1,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .shadow,
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
