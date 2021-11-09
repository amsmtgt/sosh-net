import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../profile_event_detail/profile_event_detail_widget.dart';
import '../tickets/tickets_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMYEVENTSWidget extends StatefulWidget {
  ProfileMYEVENTSWidget({Key key}) : super(key: key);

  @override
  _ProfileMYEVENTSWidgetState createState() => _ProfileMYEVENTSWidgetState();
}

class _ProfileMYEVENTSWidgetState extends State<ProfileMYEVENTSWidget> {
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
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'PROFILE'),
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                              child: Text(
                                'My events',
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
                          text: 'Hosted',
                        ),
                        Tab(
                          text: 'Upcoming',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                            child: StreamBuilder<List<EventsRecord>>(
                              stream: queryEventsRecord(
                                queryBuilder: (eventsRecord) =>
                                    eventsRecord.where('owner',
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
                                        color: FlutterFlowTheme.primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<EventsRecord> listViewEventsRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewEventsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewEventsRecord =
                                        listViewEventsRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 5),
                                              child: Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0x00F5F5F5),
                                                elevation: 1,
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 110,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFF291F65),
                                                        Color(0xFF1D0156)
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0.77, 1),
                                                      end: AlignmentDirectional(
                                                          -0.77, -1),
                                                    ),
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
                                                              ProfileEventDetailWidget(
                                                            refEvent:
                                                                listViewEventsRecord
                                                                    .reference,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 15, 0),
                                                          child: Row(
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
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                child: Image
                                                                    .network(
                                                                  listViewEventsRecord
                                                                      .photoUrl,
                                                                  width: 90,
                                                                  height: 80,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          15,
                                                                          10,
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
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            dateTimeFormat('MMMEd',
                                                                                listViewEventsRecord.startDateEvent),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                FlutterFlowTheme.bodyText2.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.violet1,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'at',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.bodyText2.override(
                                                                                fontFamily: 'Nunito',
                                                                                color: FlutterFlowTheme.violet1,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              dateTimeFormat('jm', listViewEventsRecord.startDateEvent),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.bodyText2.override(
                                                                                fontFamily: 'Nunito',
                                                                                color: FlutterFlowTheme.violet1,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        listViewEventsRecord
                                                                            .name,
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
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                            child: StreamBuilder<List<EventTicketsRecord>>(
                              stream: queryEventTicketsRecord(
                                queryBuilder: (eventTicketsRecord) =>
                                    eventTicketsRecord
                                        .where('User',
                                            isEqualTo: currentUserReference)
                                        .where('approved', isEqualTo: true),
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
                                    return StreamBuilder<EventsRecord>(
                                      stream: EventsRecord.getDocument(
                                          listViewEventTicketsRecord.event),
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
                                        final columnEventsRecord =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 5),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream:
                                                      UsersRecord.getDocument(
                                                          columnEventsRecord
                                                              .owner),
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
                                                    final cardUsersRecord =
                                                        snapshot.data;
                                                    return InkWell(
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                TicketsWidget(
                                                              refEvent:
                                                                  listViewEventTicketsRecord
                                                                      .reference,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color:
                                                            Color(0x00F5F5F5),
                                                        elevation: 1,
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 120,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                FlutterFlowTheme
                                                                    .shadow,
                                                                Color(
                                                                    0xFF291F65)
                                                              ],
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.5, -1),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -0.5, 1),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                child: Row(
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
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.network(
                                                                              columnEventsRecord.photoUrl,
                                                                              width: 90,
                                                                              height: 80,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15,
                                                                            0,
                                                                            10,
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
                                                                              '${dateTimeFormat('MMMEd', columnEventsRecord.startDateEvent)} at ${dateTimeFormat('jm', columnEventsRecord.startDateEvent)}',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.bodyText2.override(
                                                                                fontFamily: 'Nunito',
                                                                                color: FlutterFlowTheme.violet1,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              columnEventsRecord.name,
                                                                              style: FlutterFlowTheme.bodyText1.override(
                                                                                fontFamily: 'Nunito',
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                  child: Text(
                                                                                    'By',
                                                                                    style: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Nunito',
                                                                                      fontSize: 13,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  columnEventsRecord.ownerName,
                                                                                  style: FlutterFlowTheme.bodyText2.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    fontSize: 13,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                                )
                                                                              ],
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
                                );
                              },
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
