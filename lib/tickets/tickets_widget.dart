import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketsWidget extends StatefulWidget {
  TicketsWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _TicketsWidgetState createState() => _TicketsWidgetState();
}

class _TicketsWidgetState extends State<TicketsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventTicketsRecord>(
      stream: EventTicketsRecord.getDocument(widget.refEvent),
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
        final ticketsEventTicketsRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.shadow,
          body: StreamBuilder<EventsRecord>(
            stream: EventsRecord.getDocument(ticketsEventTicketsRecord.event),
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
              final containerEventsRecord = snapshot.data;
              return Container(
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
                child: StreamBuilder<UsersRecord>(
                  stream:
                      UsersRecord.getDocument(ticketsEventTicketsRecord.user),
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
                    final columnUsersRecord = snapshot.data;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 44, 15, 0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        buttonSize: 46,
                                        icon: Icon(
                                          Icons.close,
                                          color:
                                              FlutterFlowTheme.secondaryColor,
                                          size: 25,
                                        ),
                                        onPressed: () async {
                                          Navigator.pop(context);
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
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Entry ticket',
                                    style: FlutterFlowTheme.subtitle1,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Show QR code to event host',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.white2,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 25, 25, 25),
                                    child: Container(
                                      width: double.infinity,
                                      height: 520,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0x702431E4),
                                            FlutterFlowTheme.shadow
                                          ],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 15, 15, 15),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    columnUsersRecord.photoUrl,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Username',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 14,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    ticketsEventTicketsRecord
                                                        .uniqueCode,
                                                    width: 200,
                                                    height: 200,
                                                    fit: BoxFit.cover,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 15, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    containerEventsRecord.name,
                                                    style: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 20),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    containerEventsRecord
                                                        .location,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .white2,
                                                      fontSize: 14,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                              thickness: 2,
                                              color: FlutterFlowTheme.blue1,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 20, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Date',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                              'MMMMEEEEd',
                                                              containerEventsRecord
                                                                  .startDateEvent),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            color:
                                                                FlutterFlowTheme
                                                                    .violet2,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Time',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                              'jm',
                                                              containerEventsRecord
                                                                  .startDateEvent),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            color:
                                                                FlutterFlowTheme
                                                                    .violet2,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                              thickness: 2,
                                              color: FlutterFlowTheme.blue1,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 5, 0),
                                                    child: Text(
                                                      'Ticket Nº',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                            .violet1,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    functions.getUniqueCodeImage(
                                                        containerEventsRecord
                                                            .name,
                                                        ticketsEventTicketsRecord
                                                            .uniqueCode),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet1,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
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
                          ),
                        )
                      ],
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
