import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../events_detail/events_detail_widget.dart';
import '../events_filters/events_filters_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsWidget extends StatefulWidget {
  EventsWidget({Key key}) : super(key: key);

  @override
  _EventsWidgetState createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
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
          List<UsersRecord> eventsUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final eventsUsersRecord = eventsUsersRecordList.isNotEmpty
              ? eventsUsersRecordList.first
              : null;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.shadow,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF050616), Color(0xFF0F0D3F)],
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Events',
                                  style: FlutterFlowTheme.title3.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      buttonSize: 50,
                                      icon: Icon(
                                        Icons.search_rounded,
                                        color: FlutterFlowTheme.secondaryColor,
                                        size: 33,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      buttonSize: 46,
                                      icon: Icon(
                                        Icons.add_circle_outline,
                                        color: FlutterFlowTheme.secondaryColor,
                                        size: 28,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
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
                            color: Color(0xFF261C6C),
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 20),
                              child: Text(
                                'What\'s going on in your circle',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 220,
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<EventsRecord>>(
                                  stream: queryEventsRecord(),
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
                                    List<EventsRecord>
                                        listViewEventsRecordList =
                                        snapshot.data;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          listViewEventsRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewEventsRecord =
                                            listViewEventsRecordList[
                                                listViewIndex];
                                        return StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              listViewEventsRecord.owner),
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
                                            final stackUsersRecord =
                                                snapshot.data;
                                            return Stack(
                                              children: [
                                                Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color:
                                                      FlutterFlowTheme.shadow,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              EventsDetailWidget(
                                                            refEvent:
                                                                listViewEventsRecord
                                                                    .reference,
                                                            eventTitle:
                                                                listViewEventsRecord
                                                                    .name,
                                                            eventLocation:
                                                                listViewEventsRecord
                                                                    .location,
                                                            eventOwnerName:
                                                                listViewEventsRecord
                                                                    .ownerName,
                                                            eventDate:
                                                                listViewEventsRecord
                                                                    .startDateEvent,
                                                            eventType:
                                                                listViewEventsRecord
                                                                    .privacyType,
                                                            eventGuest:
                                                                listViewEventsRecord
                                                                    .guestCount,
                                                            eventPhoto:
                                                                listViewEventsRecord
                                                                    .photoUrl,
                                                            ownerPhoto:
                                                                stackUsersRecord
                                                                    .photoUrl,
                                                            isPlus21:
                                                                listViewEventsRecord
                                                                    .isPlus21,
                                                            isFree:
                                                                listViewEventsRecord
                                                                    .isFree,
                                                            price:
                                                                listViewEventsRecord
                                                                    .price,
                                                            isPayed:
                                                                listViewEventsRecord
                                                                    .isPayed,
                                                            eventDetail:
                                                                listViewEventsRecord
                                                                    .description,
                                                            eventGranted:
                                                                listViewEventsRecord
                                                                    .grantedTickets,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            Image.network(
                                                              listViewEventsRecord
                                                                  .photoUrl,
                                                              width: 180,
                                                              height: 130,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.15,
                                                                      -0.65),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            108,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 60,
                                                                  height: 25,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme
                                                                        .blue1,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            60),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'GOING',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.tertiaryColor,
                                                                          fontSize:
                                                                              11,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      20, 0, 0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'MMMMEEEEd',
                                                                listViewEventsRecord
                                                                    .startDateEvent),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  FlutterFlowTheme
                                                                      .violet1,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 20),
                                                          child: Text(
                                                            listViewEventsRecord
                                                                .name,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.2),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Container(
                                                      width: 55,
                                                      height: 55,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.25, 0.25),
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            stackUsersRecord
                                                                .photoUrl,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Events near you',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: Icon(
                                              Icons.tune_rounded,
                                              color: Color(0xFF844DFF),
                                              size: 25,
                                            ),
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      EventsFiltersWidget(),
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: StreamBuilder<List<EventsRecord>>(
                                stream: queryEventsRecord(),
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
                                  List<EventsRecord> gridViewEventsRecordList =
                                      snapshot.data;
                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 0,
                                      childAspectRatio: 1,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: gridViewEventsRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewEventsRecord =
                                          gridViewEventsRecordList[
                                              gridViewIndex];
                                      return Card(
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Image.network(
                                                  gridViewEventsRecord.photoUrl,
                                                  width: 180,
                                                  height: 120,
                                                  fit: BoxFit.cover,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.15, -0.65),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                108, 10, 0, 0),
                                                    child: Container(
                                                      width: 60,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .blue1,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'GOING',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: FlutterFlowTheme
                                                                  .tertiaryColor,
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'MMMMEEEEd',
                                                    gridViewEventsRecord
                                                        .startDateEvent),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet1,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 20),
                                              child: Text(
                                                gridViewEventsRecord.name,
                                                style:
                                                    FlutterFlowTheme.bodyText1,
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
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
        },
      ),
    );
  }
}
