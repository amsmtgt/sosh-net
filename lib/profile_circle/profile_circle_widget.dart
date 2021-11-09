import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/modal_add_user_widget.dart';
import '../components/modal_outercircle_options_widget.dart';
import '../components/modal_remove_circle_widget.dart';
import '../find_people/find_people_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_inner_circle_request/profile_inner_circle_request_widget.dart';
import '../user_profile_inner_circle/user_profile_inner_circle_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCircleWidget extends StatefulWidget {
  ProfileCircleWidget({Key key}) : super(key: key);

  @override
  _ProfileCircleWidgetState createState() => _ProfileCircleWidgetState();
}

class _ProfileCircleWidgetState extends State<ProfileCircleWidget> {
  TextEditingController textController1;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  TextEditingController textController2;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  bool _loadingButton7 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
          List<UsersRecord> profileCircleUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final profileCircleUsersRecord =
              profileCircleUsersRecordList.isNotEmpty
                  ? profileCircleUsersRecordList.first
                  : null;
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
                                    currentUserDisplayName,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 46,
                                  icon: Icon(
                                    Icons.person_search_outlined,
                                    color: FlutterFlowTheme.secondaryColor,
                                    size: 28,
                                  ),
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FindPeopleWidget(),
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
                    child: DefaultTabController(
                      length: 3,
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
                                text: 'Inner Circle',
                              ),
                              Tab(
                                text: 'Outer Circle',
                              ),
                              Tab(
                                text: 'Followers',
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
                                      Visibility(
                                        visible: functions.getRequests(
                                                profileCircleUsersRecord
                                                    .countRequest) ??
                                            true,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 25, 15, 0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.shadow,
                                                    Color(0xFF291F65)
                                                  ],
                                                  stops: [0, 1],
                                                  begin: AlignmentDirectional(
                                                      0.37, -1),
                                                  end: AlignmentDirectional(
                                                      -0.37, 1),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
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
                                                        Text(
                                                          'Requests',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: 30,
                                                            height: 30,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                  .backgroundcolor2,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    FlutterFlowTheme
                                                                        .violet1,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  profileCircleUsersRecord
                                                                      .countRequest
                                                                      .toString(),
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .white2,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ProfileInnerCircleRequestWidget(),
                                                            ),
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              'View all',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color:
                                                                    FlutterFlowTheme
                                                                        .violet2,
                                                                fontSize: 14,
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
                                                                        .violet2,
                                                                size: 13,
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
                                        ),
                                      ),
                                      Visibility(
                                        visible: functions.getRequests(
                                                profileCircleUsersRecord
                                                    .countRequest) ??
                                            true,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15, 0,
                                                                    15, 0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 110,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                FlutterFlowTheme
                                                                    .shadow,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10),
                                                              topLeft: Radius
                                                                  .circular(0),
                                                              topRight: Radius
                                                                  .circular(0),
                                                            ),
                                                          ),
                                                          child: StreamBuilder<
                                                              List<
                                                                  CirclesRecord>>(
                                                            stream:
                                                                queryCirclesRecord(
                                                              queryBuilder: (circlesRecord) => circlesRecord
                                                                  .where(
                                                                      'FollowerId',
                                                                      isEqualTo:
                                                                          currentUserReference)
                                                                  .where(
                                                                      'addedByUser',
                                                                      isEqualTo:
                                                                          true)
                                                                  .where(
                                                                      'addedByFollower',
                                                                      isEqualTo:
                                                                          false),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
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
                                                              List<CirclesRecord>
                                                                  columnCirclesRecordList =
                                                                  snapshot.data;
                                                              // Return an empty Container when the document does not exist.
                                                              if (snapshot.data
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final columnCirclesRecord =
                                                                  columnCirclesRecordList
                                                                          .isNotEmpty
                                                                      ? columnCirclesRecordList
                                                                          .first
                                                                      : null;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child: StreamBuilder<
                                                                        UsersRecord>(
                                                                      stream: UsersRecord.getDocument(
                                                                          columnCirclesRecord
                                                                              .userId),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: SpinKitRing(
                                                                                color: FlutterFlowTheme.primaryColor,
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
                                                                          children: [
                                                                            Container(
                                                                              width: 40,
                                                                              height: 40,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.network(
                                                                                rowUsersRecord.photoUrl,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: FutureBuilder<dynamic>(
                                                                                future: getEventDataCall(
                                                                                  eventurl: columnCirclesRecord.eventRef,
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
                                                                                  final columnGetEventDataResponse = snapshot.data;
                                                                                  return Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            rowUsersRecord.displayName,
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
                                                                                        style: FlutterFlowTheme.bodyText1.override(
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
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            5,
                                                                            15,
                                                                            0),
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
                                                                                _loadingButton1 = true);
                                                                            try {
                                                                              await columnCirclesRecord.reference.delete();
                                                                              final usersUpdateData = {
                                                                                'countRequest': FieldValue.increment(-1),
                                                                                'countInner': FieldValue.increment(-1),
                                                                              };
                                                                              await currentUserReference.update(usersUpdateData);
                                                                            } finally {
                                                                              setState(() => _loadingButton1 = false);
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
                                                                            color:
                                                                                Color(0x002431E4),
                                                                            textStyle:
                                                                                FlutterFlowTheme.subtitle2.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.violet2,
                                                                              fontSize: 14,
                                                                            ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00CEB8FF),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                50,
                                                                          ),
                                                                          loading:
                                                                              _loadingButton1,
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.4,
                                                                              0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Container(
                                                                              width: 80,
                                                                              height: 30,
                                                                              decoration: BoxDecoration(
                                                                                gradient: LinearGradient(
                                                                                  colors: [
                                                                                    FlutterFlowTheme.primaryColor,
                                                                                    Color(0xFF844DFF)
                                                                                  ],
                                                                                  stops: [
                                                                                    0,
                                                                                    1
                                                                                  ],
                                                                                  begin: AlignmentDirectional(1, -0.94),
                                                                                  end: AlignmentDirectional(-1, 0.94),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(100),
                                                                              ),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0.05, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    setState(() => _loadingButton2 = true);
                                                                                    try {
                                                                                      final circlesUpdateData = createCirclesRecordData(
                                                                                        addedByFollower: true,
                                                                                      );
                                                                                      await columnCirclesRecord.reference.update(circlesUpdateData);

                                                                                      final circlesCreateData = createCirclesRecordData(
                                                                                        userId: columnCirclesRecord.followerId,
                                                                                        followerId: columnCirclesRecord.userId,
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
                                                                                  text: 'Accept',
                                                                                  options: FFButtonOptions(
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
                                                                                  loading: _loadingButton2,
                                                                                ),
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
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 25, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                onChanged: (_) =>
                                                    setState(() {}),
                                                controller: textController1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Search user...',
                                                  hintStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                    fontSize: 16,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.shadow,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              15, 15, 15, 15),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color:
                                                        FlutterFlowTheme.blue1,
                                                    size: 15,
                                                  ),
                                                  suffixIcon: textController1
                                                          .text.isNotEmpty
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                            () =>
                                                                textController1
                                                                    .clear(),
                                                          ),
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                .secondaryColor,
                                                            size: 15,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                  fontSize: 16,
                                                ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              profileCircleUsersRecord
                                                  .countInner
                                                  .toString(),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Inner Circle',
                                                style:
                                                    FlutterFlowTheme.bodyText1,
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 15, 0, 15),
                                                child: StreamBuilder<
                                                    List<CirclesRecord>>(
                                                  stream: queryCirclesRecord(
                                                    queryBuilder: (circlesRecord) =>
                                                        circlesRecord
                                                            .where('UserId',
                                                                isEqualTo:
                                                                    currentUserReference)
                                                            .where(
                                                                'addedByUser',
                                                                isEqualTo: true)
                                                            .where(
                                                                'addedByFollower',
                                                                isEqualTo:
                                                                    true),
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
                                                                FlutterFlowTheme
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
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewCirclesRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewCirclesRecord =
                                                            listViewCirclesRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      5,
                                                                      15),
                                                          child: StreamBuilder<
                                                              UsersRecord>(
                                                            stream: UsersRecord
                                                                .getDocument(
                                                                    listViewCirclesRecord
                                                                        .followerId),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
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
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => UserProfileInnerCircleWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              50,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            rowUsersRecord.photoUrl,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => UserProfileInnerCircleWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                rowUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Nunito',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      setState(() =>
                                                                          _loadingButton3 =
                                                                              true);
                                                                      try {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Color(0x4D080618),
                                                                          barrierColor:
                                                                              Color(0x4D080618),
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return ModalRemoveCircleWidget();
                                                                          },
                                                                        );
                                                                      } finally {
                                                                        setState(() =>
                                                                            _loadingButton3 =
                                                                                false);
                                                                      }
                                                                    },
                                                                    text:
                                                                        'Remove',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: 90,
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
                                                                            15,
                                                                      ),
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme
                                                                            .violet2,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          50,
                                                                    ),
                                                                    loading:
                                                                        _loadingButton3,
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
                                            Expanded(
                                              child: TextFormField(
                                                onChanged: (_) =>
                                                    setState(() {}),
                                                controller: textController2,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Search user...',
                                                  hintStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                    fontSize: 16,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.shadow,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              15, 15, 15, 15),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color:
                                                        FlutterFlowTheme.blue1,
                                                    size: 15,
                                                  ),
                                                  suffixIcon: textController2
                                                          .text.isNotEmpty
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                            () =>
                                                                textController2
                                                                    .clear(),
                                                          ),
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                .secondaryColor,
                                                            size: 15,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                  fontSize: 16,
                                                ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              profileCircleUsersRecord
                                                  .countOuter
                                                  .toString(),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Outer circle',
                                                style:
                                                    FlutterFlowTheme.bodyText1,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 15, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 5,
                                                                    0, 15),
                                                        child: StreamBuilder<
                                                            List<
                                                                CirclesRecord>>(
                                                          stream:
                                                              queryCirclesRecord(
                                                            queryBuilder: (circlesRecord) => circlesRecord
                                                                .where(
                                                                    'FollowerId',
                                                                    isEqualTo:
                                                                        currentUserReference)
                                                                .where(
                                                                    'addedByFollower',
                                                                    isEqualTo:
                                                                        true)
                                                                .where(
                                                                    'addedByUser',
                                                                    isEqualTo:
                                                                        false),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<CirclesRecord>
                                                                listViewCirclesRecordList =
                                                                snapshot.data;
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewCirclesRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewCirclesRecord =
                                                                    listViewCirclesRecordList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          5,
                                                                          15),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewCirclesRecord
                                                                            .userId),
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
                                                                      final rowUsersRecord =
                                                                          snapshot
                                                                              .data;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 50,
                                                                                height: 50,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  rowUsersRecord.photoUrl,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      rowUsersRecord.displayName,
                                                                                      style: FlutterFlowTheme.bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                30,
                                                                            borderWidth:
                                                                                1,
                                                                            buttonSize:
                                                                                60,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.keyboard_control_sharp,
                                                                              color: FlutterFlowTheme.violet1,
                                                                              size: 30,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Color(0x4D110D30),
                                                                                barrierColor: Color(0x4D110D30),
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return ModalOutercircleOptionsWidget(
                                                                                    userToAdd: rowUsersRecord.reference,
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
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
                                            15, 20, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              profileCircleUsersRecord
                                                  .countFollowers
                                                  .toString(),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Followers',
                                                style:
                                                    FlutterFlowTheme.bodyText1,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 15, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 5,
                                                                    0, 15),
                                                        child: StreamBuilder<
                                                            List<
                                                                CirclesRecord>>(
                                                          stream:
                                                              queryCirclesRecord(
                                                            queryBuilder: (circlesRecord) => circlesRecord
                                                                .where('UserId',
                                                                    isEqualTo:
                                                                        currentUserReference)
                                                                .where(
                                                                    'addedByFollower',
                                                                    isEqualTo:
                                                                        true)
                                                                .where(
                                                                    'addedByUser',
                                                                    isEqualTo:
                                                                        false),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<CirclesRecord>
                                                                listViewCirclesRecordList =
                                                                snapshot.data;
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewCirclesRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewCirclesRecord =
                                                                    listViewCirclesRecordList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          5,
                                                                          15),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewCirclesRecord
                                                                            .followerId),
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
                                                                      final rowUsersRecord =
                                                                          snapshot
                                                                              .data;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 50,
                                                                                height: 50,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  rowUsersRecord.photoUrl,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      rowUsersRecord.displayName,
                                                                                      style: FlutterFlowTheme.bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.4, 0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                                              child: Container(
                                                                                width: 90,
                                                                                height: 30,
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
                                                                                  borderRadius: BorderRadius.circular(100),
                                                                                ),
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.05, 0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      setState(() => _loadingButton4 = true);
                                                                                      try {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Color(0x4D110D30),
                                                                                          barrierColor: Color(0x4D110D30),
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return ModalAddUserWidget(
                                                                                              userToAdd: rowUsersRecord.reference,
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      } finally {
                                                                                        setState(() => _loadingButton4 = false);
                                                                                      }
                                                                                    },
                                                                                    text: 'Add',
                                                                                    options: FFButtonOptions(
                                                                                      width: 90,
                                                                                      height: 30,
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
                                                                                    loading: _loadingButton4,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
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
        },
      ),
    );
  }
}
