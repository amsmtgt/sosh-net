import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../notifications_switch/notifications_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsWidget extends StatefulWidget {
  NotificationsWidget({Key key}) : super(key: key);

  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
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
            colors: [FlutterFlowTheme.backgroundcolor1, Color(0xFF0F0D3F)],
            stops: [0, 1],
            begin: AlignmentDirectional(0.37, -1),
            end: AlignmentDirectional(-0.37, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(0),
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
                                  Text(
                                    'Notifications',
                                    style: FlutterFlowTheme.subtitle1,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Color(0x00844DFF),
                                        borderRadius: 30,
                                        buttonSize: 46,
                                        icon: Icon(
                                          Icons.settings_outlined,
                                          color:
                                              FlutterFlowTheme.secondaryColor,
                                          size: 25,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  NotificationsSwitchWidget(),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xFF1A134D),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
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
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child:
                                      StreamBuilder<List<NotificationsRecord>>(
                                    stream: queryNotificationsRecord(
                                      queryBuilder: (notificationsRecord) =>
                                          notificationsRecord.where('User',
                                              isEqualTo: currentUserReference),
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
                                      List<NotificationsRecord>
                                          listViewNotificationsRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewNotificationsRecordList
                                                .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewNotificationsRecord =
                                              listViewNotificationsRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: FlutterFlowTheme.shadow,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    20, 15, 20),
                                                        child: Container(
                                                          width: 80,
                                                          height: 80,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            listViewNotificationsRecord
                                                                .notificationImage,
                                                            fit: BoxFit
                                                                .fitHeight,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 10, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          listViewNotificationsRecord
                                                                              .message,
                                                                          style: FlutterFlowTheme
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            fontSize:
                                                                                15,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  dateTimeFormat(
                                                                      'relative',
                                                                      listViewNotificationsRecord
                                                                          .date),
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: Color(
                                                                        0xFFDBCCFE),
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Visibility(
                                                    visible:
                                                        (listViewNotificationsRecord
                                                                .type) ==
                                                            ('requestTicket'),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 15, 22),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Denny',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 106,
                                                                height: 35,
                                                                color: Color(
                                                                    0x005764FF),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .tertiaryColor,
                                                                  fontSize: 15,
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
                                                                  _loadingButton1,
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
                                                            child: Container(
                                                              width: 106,
                                                              height: 35,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed: () {
                                                                  print(
                                                                      'Button pressed ...');
                                                                },
                                                                text: 'Accept',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 106,
                                                                  height: 35,
                                                                  color: Color(
                                                                      0x005764FF),
                                                                  textStyle: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .tertiaryColor,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x08CEB8FF),
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      50,
                                                                ),
                                                                loading:
                                                                    _loadingButton2,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible:
                                                        (listViewNotificationsRecord
                                                                .type) ==
                                                            ('innerRequest'),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 15, 22),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Denny',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 106,
                                                                height: 35,
                                                                color: Color(
                                                                    0x005764FF),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .tertiaryColor,
                                                                  fontSize: 15,
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
                                                                  _loadingButton3,
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
                                                            child: Container(
                                                              width: 106,
                                                              height: 35,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed: () {
                                                                  print(
                                                                      'Button pressed ...');
                                                                },
                                                                text: 'Accept',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 106,
                                                                  height: 35,
                                                                  color: Color(
                                                                      0x005764FF),
                                                                  textStyle: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .tertiaryColor,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x08CEB8FF),
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      50,
                                                                ),
                                                                loading:
                                                                    _loadingButton4,
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
                                          );
                                        },
                                      );
                                    },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
