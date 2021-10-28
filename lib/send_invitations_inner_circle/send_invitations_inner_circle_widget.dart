import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../events_detail_host/events_detail_host_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SendInvitationsInnerCircleWidget extends StatefulWidget {
  SendInvitationsInnerCircleWidget({
    Key key,
    this.refEvent,
    this.eventTitle,
    this.eventLocation,
    this.eventOwnerName,
    this.eventDate,
    this.isFree,
    this.isPayed,
    this.price,
  }) : super(key: key);

  final DocumentReference refEvent;
  final String eventTitle;
  final String eventLocation;
  final String eventOwnerName;
  final DateTime eventDate;
  final bool isFree;
  final bool isPayed;
  final double price;

  @override
  _SendInvitationsInnerCircleWidgetState createState() =>
      _SendInvitationsInnerCircleWidgetState();
}

class _SendInvitationsInnerCircleWidgetState
    extends State<SendInvitationsInnerCircleWidget> {
  TextEditingController textController;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      EventsDetailHostWidget(),
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                              child: Text(
                                'Send invitations',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: Text(
                            'Invite Inner Circle to your event. They will receive a notification to join.',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.white2,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                onChanged: (_) => setState(() {}),
                                controller: textController,
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
                                  suffixIcon: textController.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () => setState(
                                            () => textController.clear(),
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
                                  child: StreamBuilder<List<CirclesRecord>>(
                                    stream: queryCirclesRecord(
                                      queryBuilder: (circlesRecord) =>
                                          circlesRecord
                                              .where('UserId',
                                                  isEqualTo:
                                                      currentUserReference)
                                              .where('addedByUser',
                                                  isEqualTo: true)
                                              .where('addedByFollower',
                                                  isEqualTo: true),
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
                                      List<CirclesRecord>
                                          listViewCirclesRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewCirclesRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewCirclesRecord =
                                              listViewCirclesRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 5, 15),
                                            child: StreamBuilder<UsersRecord>(
                                              stream: UsersRecord.getDocument(
                                                  listViewCirclesRecord
                                                      .followerId),
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
                                                final rowUsersRecord =
                                                    snapshot.data;
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Visibility(
                                                      visible: functions
                                                              .showRecordUser(
                                                                  textController
                                                                      .text,
                                                                  rowUsersRecord
                                                                      .displayName) ??
                                                          true,
                                                      child: Expanded(
                                                        child: Row(
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
                                                            Align(
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
                                                                child:
                                                                    Container(
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
                                                                            _loadingButton1 =
                                                                                true);
                                                                        try {
                                                                          final eventTicketsCreateData =
                                                                              createEventTicketsRecordData(
                                                                            event:
                                                                                widget.refEvent,
                                                                            user:
                                                                                rowUsersRecord.reference,
                                                                            noTickets:
                                                                                1,
                                                                            status:
                                                                                'Pending User',
                                                                            approved:
                                                                                true,
                                                                            userId:
                                                                                rowUsersRecord.uid,
                                                                            approvedByUser:
                                                                                false,
                                                                          );
                                                                          await EventTicketsRecord
                                                                              .collection
                                                                              .doc()
                                                                              .set(eventTicketsCreateData);
                                                                        } finally {
                                                                          setState(() =>
                                                                              _loadingButton1 = false);
                                                                        }
                                                                      },
                                                                      text:
                                                                          'Invite',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            90,
                                                                        height:
                                                                            30,
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
                                                                          fontWeight:
                                                                              FontWeight.w600,
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
                                                                          _loadingButton1,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
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
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 25),
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
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Invite all Inner Circle',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40,
                        color: Color(0x003A2EE8),
                        textStyle: FlutterFlowTheme.subtitle2.override(
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
                      loading: _loadingButton2,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
