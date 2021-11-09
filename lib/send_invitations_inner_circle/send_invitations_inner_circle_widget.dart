import '../auth/auth_util.dart';
import '../backend/backend.dart';
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
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _SendInvitationsInnerCircleWidgetState createState() =>
      _SendInvitationsInnerCircleWidgetState();
}

class _SendInvitationsInnerCircleWidgetState
    extends State<SendInvitationsInnerCircleWidget> {
  TextEditingController textController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
        final sendInvitationsInnerCircleEventsRecord = snapshot.data;
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 40, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
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
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                                                  .where(
                                                      'UserId',
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
                                            itemCount: listViewCirclesRecordList
                                                .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewCirclesRecord =
                                                  listViewCirclesRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream:
                                                      UsersRecord.getDocument(
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
                                                            color:
                                                                FlutterFlowTheme
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
                                                          visible: functions.showRecordUser(
                                                                  textController
                                                                      .text,
                                                                  rowUsersRecord
                                                                      .displayName) ??
                                                              true,
                                                          child: Expanded(
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
                                                                      width: 50,
                                                                      height:
                                                                          50,
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
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            rowUsersRecord.displayName,
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
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
                                                                      width: 90,
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
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.94),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.94),
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
                                                                            setState(() =>
                                                                                _loadingButton = true);
                                                                            try {
                                                                              final eventTicketsCreateData = createEventTicketsRecordData(
                                                                                event: widget.refEvent,
                                                                                user: rowUsersRecord.reference,
                                                                                noTickets: 1,
                                                                                status: 'Pending User',
                                                                                approved: true,
                                                                                userId: rowUsersRecord.uid,
                                                                                approvedByUser: false,
                                                                                invitedByUser: true,
                                                                              );
                                                                              await EventTicketsRecord.collection.doc().set(eventTicketsCreateData);
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Invite sent to ${rowUsersRecord.displayName}',
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: Color(0x00000000),
                                                                                ),
                                                                              );
                                                                              final notificationsCreateData = createNotificationsRecordData(
                                                                                user: rowUsersRecord.reference,
                                                                                message: '${currentUserDisplayName} has invited you to the event ${sendInvitationsInnerCircleEventsRecord.name}',
                                                                                date: getCurrentTimestamp,
                                                                                event: widget.refEvent,
                                                                                hasEvent: true,
                                                                                type: 'inviteTicket',
                                                                                notificationImage: sendInvitationsInnerCircleEventsRecord.photoUrl,
                                                                              );
                                                                              await NotificationsRecord.collection.doc().set(notificationsCreateData);
                                                                            } finally {
                                                                              setState(() => _loadingButton = false);
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
                                                                            color:
                                                                                Color(0x00844DFF),
                                                                            textStyle:
                                                                                FlutterFlowTheme.subtitle2.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: Colors.white,
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                100,
                                                                          ),
                                                                          loading:
                                                                              _loadingButton,
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
