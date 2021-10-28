import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInnerCircleRequestWidget extends StatefulWidget {
  ProfileInnerCircleRequestWidget({Key key}) : super(key: key);

  @override
  _ProfileInnerCircleRequestWidgetState createState() =>
      _ProfileInnerCircleRequestWidgetState();
}

class _ProfileInnerCircleRequestWidgetState
    extends State<ProfileInnerCircleRequestWidget> {
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
            colors: [Color(0xFF050616), Color(0xFF121327)],
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
                              Icons.arrow_back_ios_rounded,
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
                                'Inner Circle requests',
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
                      unselectedLabelColor: FlutterFlowTheme.white2,
                      labelStyle: GoogleFonts.getFont(
                        'Roboto',
                      ),
                      indicatorColor: FlutterFlowTheme.violet1,
                      indicatorWeight: 2,
                      tabs: [
                        Tab(
                          text: 'Received',
                        ),
                        Tab(
                          text: 'Sent',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 25, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '5',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'requests received',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 15),
                                          child: StreamBuilder<
                                              List<CirclesRecord>>(
                                            stream: queryCirclesRecord(
                                              queryBuilder: (circlesRecord) =>
                                                  circlesRecord
                                                      .where(
                                                          'FollowerId',
                                                          isEqualTo:
                                                              currentUserReference)
                                                      .where('addedByUser',
                                                          isEqualTo: true)
                                                      .where('addedByFollower',
                                                          isEqualTo: false),
                                            ),
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
                                              List<CirclesRecord>
                                                  listViewCirclesRecordList =
                                                  snapshot.data;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewCirclesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewCirclesRecord =
                                                      listViewCirclesRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 15),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              listViewCirclesRecord
                                                                  .userId),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitRing(
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final columnUsersRecord =
                                                            snapshot.data;
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 45,
                                                                  height: 45,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    columnUsersRecord
                                                                        .photoUrl,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: FutureBuilder<
                                                                      dynamic>(
                                                                    future:
                                                                        getEventDataCall(
                                                                      eventurl:
                                                                          listViewCirclesRecord
                                                                              .eventRef,
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                50,
                                                                            child:
                                                                                SpinKitRing(
                                                                              color: FlutterFlowTheme.primaryColor,
                                                                              size: 50,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final columnGetEventDataResponse =
                                                                          snapshot
                                                                              .data;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                columnUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Nunito',
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            'You met in ${getJsonField(columnGetEventDataResponse, r'''$.fields.name.stringValue''').toString()}',
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.violet1,
                                                                              fontSize: 13,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      );
                                                                    },
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          5,
                                                                          15,
                                                                          15),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      setState(() =>
                                                                          _loadingButton1 =
                                                                              true);
                                                                      try {
                                                                        await listViewCirclesRecord
                                                                            .reference
                                                                            .delete();
                                                                        final usersUpdateData =
                                                                            {
                                                                          'countRequest':
                                                                              FieldValue.delete(),
                                                                        };
                                                                        await currentUserReference
                                                                            .update(usersUpdateData);
                                                                      } finally {
                                                                        setState(() =>
                                                                            _loadingButton1 =
                                                                                false);
                                                                      }
                                                                    },
                                                                    text:
                                                                        'Remove',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          100,
                                                                      height:
                                                                          30,
                                                                      color: Color(
                                                                          0x002431E4),
                                                                      textStyle: FlutterFlowTheme
                                                                          .subtitle2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Nunito',
                                                                        color: FlutterFlowTheme
                                                                            .violet2,
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00CEB8FF),
                                                                        width:
                                                                            1,
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
                                                                            0.4,
                                                                            0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            30,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              FlutterFlowTheme.primaryColor,
                                                                              Color(0xFF844DFF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.94),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.94),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(100),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.05,
                                                                              0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              setState(() => _loadingButton2 = true);
                                                                              try {
                                                                                final circlesUpdateData = createCirclesRecordData(
                                                                                  addedByFollower: true,
                                                                                );
                                                                                await listViewCirclesRecord.reference.update(circlesUpdateData);

                                                                                final circlesCreateData = createCirclesRecordData(
                                                                                  userId: listViewCirclesRecord.followerId,
                                                                                  followerId: listViewCirclesRecord.userId,
                                                                                  addedByUser: true,
                                                                                  addedByFollower: true,
                                                                                );
                                                                                await CirclesRecord.collection.doc().set(circlesCreateData);

                                                                                final usersUpdateData = {
                                                                                  'countInner': FieldValue.increment(1),
                                                                                  'countRequest': FieldValue.increment(-1),
                                                                                };
                                                                                await currentUserReference.update(usersUpdateData);
                                                                              } finally {
                                                                                setState(() => _loadingButton2 = false);
                                                                              }
                                                                            },
                                                                            text:
                                                                                'Accept',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 80,
                                                                              height: 35,
                                                                              color: Color(0x00844DFF),
                                                                              textStyle: FlutterFlowTheme.subtitle2.override(
                                                                                fontFamily: 'Nunito',
                                                                                color: Colors.white,
                                                                                fontSize: 14,
                                                                              ),
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: 100,
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
                                                            ),
                                                            Divider(
                                                              height: 1,
                                                              thickness: 1,
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .shadow,
                                                            )
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 25, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '2',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'requests sent',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 15),
                                          child: StreamBuilder<
                                              List<CirclesRecord>>(
                                            stream: queryCirclesRecord(
                                              queryBuilder: (circlesRecord) =>
                                                  circlesRecord
                                                      .where(
                                                          'UserId',
                                                          isEqualTo:
                                                              currentUserReference)
                                                      .where('addedByUser',
                                                          isEqualTo: true)
                                                      .where('addedByFollower',
                                                          isEqualTo: false),
                                            ),
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
                                              List<CirclesRecord>
                                                  listViewCirclesRecordList =
                                                  snapshot.data;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewCirclesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewCirclesRecord =
                                                      listViewCirclesRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 5, 15),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              listViewCirclesRecord
                                                                  .followerId),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitRing(
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final rowUsersRecord =
                                                            snapshot.data;
                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
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
                                                                  width: 50,
                                                                  height: 50,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    rowUsersRecord
                                                                        .photoUrl,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                        rowUsersRecord
                                                                            .displayName,
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    setState(() =>
                                                                        _loadingButton7 =
                                                                            true);
                                                                    try {
                                                                      await listViewCirclesRecord
                                                                          .reference
                                                                          .delete();
                                                                    } finally {
                                                                      setState(() =>
                                                                          _loadingButton7 =
                                                                              false);
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Remove',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 90,
                                                                    height: 30,
                                                                    color: Color(
                                                                        0x002431E4),
                                                                    textStyle: FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: FlutterFlowTheme
                                                                          .violet2,
                                                                      fontSize:
                                                                          15,
                                                                    ),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme
                                                                          .violet2,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        50,
                                                                  ),
                                                                  loading:
                                                                      _loadingButton7,
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
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
