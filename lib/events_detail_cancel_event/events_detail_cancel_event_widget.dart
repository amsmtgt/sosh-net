import '../backend/backend.dart';
import '../events_report_event/events_report_event_widget.dart';
import '../events_ticketsgranted/events_ticketsgranted_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsDetailCancelEventWidget extends StatefulWidget {
  EventsDetailCancelEventWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _EventsDetailCancelEventWidgetState createState() =>
      _EventsDetailCancelEventWidgetState();
}

class _EventsDetailCancelEventWidgetState
    extends State<EventsDetailCancelEventWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        final eventsDetailCancelEventEventsRecord = snapshot.data;
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'EVENTS'),
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
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.primaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Text(
                                'Event canceled by host',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                        child: Text(
                          'If you have bought a ticket, the payment will be returned in the next few days.',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.primaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Text(
                                'Event canceled by host',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
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
                          Container(
                            height: 270,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      eventsDetailCancelEventEventsRecord
                                          .photoUrl,
                                      'https://picsum.photos/seed/582/600',
                                    ),
                                    width: double.infinity,
                                    height: 230,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(
                                          eventsDetailCancelEventEventsRecord
                                              .owner),
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
                                        final containerUsersRecord =
                                            snapshot.data;
                                        return Container(
                                          width: 90,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: 80,
                                              height: 80,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                containerUsersRecord.photoUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 25, 15, 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    eventsDetailCancelEventEventsRecord.name,
                                    style: FlutterFlowTheme.title3,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 15,
                            color: FlutterFlowTheme.shadow,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0x6A2431E4),
                                                Color(0x14080618)
                                              ],
                                              stops: [0, 1],
                                              begin: AlignmentDirectional(
                                                  -0.64, 1),
                                              end: AlignmentDirectional(
                                                  0.64, -1),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: FlutterFlowTheme.blue1,
                                            size: 20,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              eventsDetailCancelEventEventsRecord
                                                  .location,
                                              '24th St, Union City,  United States',
                                            ),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 15,
                            color: FlutterFlowTheme.shadow,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 35, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Hosted by ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  eventsDetailCancelEventEventsRecord.ownerName,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'From your',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'Inner Circle',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet1,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 10, 15, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.access_time,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Text(
                                              '${dateTimeFormat('yMMMd', eventsDetailCancelEventEventsRecord.startDateEvent)} at ${dateTimeFormat('jm', eventsDetailCancelEventEventsRecord.startDateEvent)}',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 10, 15, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.attach_money_rounded,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Text(
                                              functions.getPrice(
                                                  eventsDetailCancelEventEventsRecord
                                                      .isFree,
                                                  eventsDetailCancelEventEventsRecord
                                                      .isPayed,
                                                  eventsDetailCancelEventEventsRecord
                                                      .price),
                                              style: FlutterFlowTheme.bodyText1,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 10, 15, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.lock_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                eventsDetailCancelEventEventsRecord
                                                    .privacyType,
                                                'Public Event',
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 10, 15, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.person_remove_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                eventsDetailCancelEventEventsRecord
                                                    .guestCount
                                                    .toString(),
                                                '200 max.',
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          eventsDetailCancelEventEventsRecord
                                                  .isPlus21 ??
                                              true,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 10, 15, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0x6A2431E4),
                                                    Color(0x14080618)
                                                  ],
                                                  stops: [0, 1],
                                                  begin: AlignmentDirectional(
                                                      -0.64, 1),
                                                  end: AlignmentDirectional(
                                                      0.64, -1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(7, 7, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.addressCard,
                                                  color: FlutterFlowTheme.blue1,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              child: Text(
                                                '+21',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.shadow,
                                    Color(0x542431E4)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(1, -0.94),
                                  end: AlignmentDirectional(-1, 0.94),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            EventsTicketsgrantedWidget(
                                          refEvent: widget.refEvent,
                                          titleEvent:
                                              eventsDetailCancelEventEventsRecord
                                                  .name,
                                          titleTickets:
                                              eventsDetailCancelEventEventsRecord
                                                  .grantedTickets,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Image.asset(
                                              'assets/images/TICKET2.png',
                                              width: 55,
                                              height: 45,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                eventsDetailCancelEventEventsRecord
                                                    .grantedTickets
                                                    .toString(),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                'Tickets granted',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.white2,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 26, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'See who\'s going',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme.violet2,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3, 0, 0, 0),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: FlutterFlowTheme.violet2,
                                                size: 12,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 40, 15, 5),
                            child: Text(
                              'About',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 40),
                            child: Text(
                              eventsDetailCancelEventEventsRecord.description,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 15,
                            color: FlutterFlowTheme.shadow,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              EventsReportEventWidget(
                                            refEvent: widget.refEvent,
                                          ),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton = false);
                                    }
                                  },
                                  text: 'Report event',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 42,
                                    color: Color(0x005764FF),
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet1,
                                    ),
                                    borderSide: BorderSide(
                                      color: Color(0x00B794FD),
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  loading: _loadingButton,
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
      },
    );
  }
}
