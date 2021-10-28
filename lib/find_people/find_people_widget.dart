import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/modal_add_user_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FindPeopleWidget extends StatefulWidget {
  FindPeopleWidget({
    Key key,
    this.typeOfCircle,
    this.indexType,
  }) : super(key: key);

  final String typeOfCircle;
  final int indexType;

  @override
  _FindPeopleWidgetState createState() => _FindPeopleWidgetState();
}

class _FindPeopleWidgetState extends State<FindPeopleWidget> {
  TextEditingController textFieldSearchController;
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
  void initState() {
    super.initState();
    textFieldSearchController = TextEditingController();
  }

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
            colors: [Color(0xFF080618), Color(0xFF110D30)],
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
                                'Find people',
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
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                onChanged: (_) => setState(() {}),
                                controller: textFieldSearchController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search user...',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontSize: 16,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.shadow,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: FlutterFlowTheme.blue1,
                                    size: 15,
                                  ),
                                  suffixIcon: textFieldSearchController
                                          .text.isNotEmpty
                                      ? InkWell(
                                          onTap: () => setState(
                                            () => textFieldSearchController
                                                .clear(),
                                          ),
                                          child: Icon(
                                            Icons.clear,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            size: 15,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet2,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 15),
                                  child: StreamBuilder<List<UsersRecord>>(
                                    stream: queryUsersRecord(
                                      queryBuilder: (usersRecord) =>
                                          usersRecord.where('display_name',
                                              isEqualTo:
                                                  textFieldSearchController
                                                      .text),
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
                                      List<UsersRecord>
                                          listViewUsersRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewUsersRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewUsersRecord =
                                              listViewUsersRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 5, 15),
                                            child: FutureBuilder<dynamic>(
                                              future: getUserAlreadyAddedCall(
                                                userId: currentUserUid,
                                                followerId:
                                                    listViewUsersRecord.uid,
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
                                                final rowGetUserAlreadyAddedResponse =
                                                    snapshot.data;
                                                return AuthUserStreamWidget(
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
                                                            width: 50,
                                                            height: 50,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewUsersRecord
                                                                    .photoUrl,
                                                                'https://picsum.photos/seed/100/600',
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
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
                                                                  listViewUsersRecord
                                                                      .displayName,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Visibility(
                                                        visible: (functions
                                                                .getUserAlreadyAdded(
                                                                    rowGetUserAlreadyAddedResponse)) ==
                                                            (true),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.4, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: 90,
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
                                                                  stops: [0, 1],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          1,
                                                                          -0.94),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          -1,
                                                                          0.94),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
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
                                                                        _loadingButton1 =
                                                                            true);
                                                                    try {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Color(0x4D110D30),
                                                                        barrierColor:
                                                                            Color(0x4D110D30),
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return ModalAddUserWidget(
                                                                            userToAdd:
                                                                                listViewUsersRecord.reference,
                                                                            userToAddID:
                                                                                listViewUsersRecord.uid,
                                                                          );
                                                                        },
                                                                      );
                                                                    } finally {
                                                                      setState(() =>
                                                                          _loadingButton1 =
                                                                              false);
                                                                    }
                                                                  },
                                                                  text: 'Add',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 90,
                                                                    height: 30,
                                                                    color: Color(
                                                                        0x00844DFF),
                                                                    textStyle: FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        100,
                                                                  ),
                                                                  loading:
                                                                      _loadingButton1,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
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
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          visible: functions
                                  .hasText(textFieldSearchController.text) ??
                              true,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 15),
                                    child: StreamBuilder<List<UsersRecord>>(
                                      stream: queryUsersRecord(
                                        limit: 10,
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
                                        List<UsersRecord>
                                            listViewUsersRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewUsersRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewUsersRecord =
                                                listViewUsersRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 5, 15),
                                              child: FutureBuilder<dynamic>(
                                                future: getUserAlreadyAddedCall(
                                                  userId: currentUserUid,
                                                  followerId:
                                                      listViewUsersRecord.uid,
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
                                                  final rowGetUserAlreadyAddedResponse =
                                                      snapshot.data;
                                                  return AuthUserStreamWidget(
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
                                                                listViewUsersRecord
                                                                    .photoUrl,
                                                              ),
                                                            ),
                                                            Padding(
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
                                                                    listViewUsersRecord
                                                                        .displayName,
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Visibility(
                                                          visible: (functions
                                                                  .getUserAlreadyAdded(
                                                                      rowGetUserAlreadyAddedResponse)) ==
                                                              (true),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.4, 0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 90,
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
                                                                      BorderRadius
                                                                          .circular(
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
                                                                          _loadingButton5 =
                                                                              true);
                                                                      try {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Color(0x4D110D30),
                                                                          barrierColor:
                                                                              Color(0x4D110D30),
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return ModalAddUserWidget(
                                                                              userToAdd: listViewUsersRecord.reference,
                                                                              userToAddID: listViewUsersRecord.uid,
                                                                            );
                                                                          },
                                                                        );
                                                                      } finally {
                                                                        setState(() =>
                                                                            _loadingButton5 =
                                                                                false);
                                                                      }
                                                                    },
                                                                    text: 'Add',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: 90,
                                                                      height:
                                                                          30,
                                                                      color: Color(
                                                                          0x00844DFF),
                                                                      textStyle: FlutterFlowTheme
                                                                          .subtitle2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Nunito',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          100,
                                                                    ),
                                                                    loading:
                                                                        _loadingButton5,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
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
