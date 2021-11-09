import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/modal_confirmation_public_ticke_widget.dart';
import '../components/modal_confirmation_ticket_widget.dart';
import '../events_detail_host/events_detail_host_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_add_payment_method/profile_add_payment_method_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsRequestEntryWidget extends StatefulWidget {
  EventsRequestEntryWidget({
    Key key,
    this.refEvent,
    this.eventTitle,
    this.eventLocation,
    this.eventOwnerName,
    this.eventDate,
    this.isFree,
    this.isPayed,
    this.price,
    this.ownerEvent,
    this.eventType,
  }) : super(key: key);

  final DocumentReference refEvent;
  final String eventTitle;
  final String eventLocation;
  final String eventOwnerName;
  final DateTime eventDate;
  final bool isFree;
  final bool isPayed;
  final double price;
  final DocumentReference ownerEvent;
  final String eventType;

  @override
  _EventsRequestEntryWidgetState createState() =>
      _EventsRequestEntryWidgetState();
}

class _EventsRequestEntryWidgetState extends State<EventsRequestEntryWidget> {
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
                              Icons.close,
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
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Request entry',
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
                        Text(
                          widget.eventTitle,
                          style: FlutterFlowTheme.title3,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'By',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet2,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  widget.eventOwnerName,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
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
                                        begin: AlignmentDirectional(-0.64, 1),
                                        end: AlignmentDirectional(0.64, -1),
                                      ),
                                      borderRadius: BorderRadius.circular(11),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: FlutterFlowTheme.blue1,
                                      size: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 0, 0),
                                    child: Text(
                                      '${dateTimeFormat('MMMMEEEEd', widget.eventDate)} ${dateTimeFormat('jm', widget.eventDate)}',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                                          begin: AlignmentDirectional(-0.64, 1),
                                          end: AlignmentDirectional(0.64, -1),
                                        ),
                                        borderRadius: BorderRadius.circular(11),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: FlutterFlowTheme.blue1,
                                        size: 20,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        widget.eventLocation,
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: widget.isFree ?? true,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
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
                                            begin:
                                                AlignmentDirectional(-0.64, 1),
                                            end: AlignmentDirectional(0.64, -1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.attach_money,
                                          color: FlutterFlowTheme.blue1,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Text(
                                          'Cover Fee',
                                          style: FlutterFlowTheme.bodyText1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: widget.isPayed ?? true,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
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
                                            begin:
                                                AlignmentDirectional(-0.64, 1),
                                            end: AlignmentDirectional(0.64, -1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.attach_money,
                                          color: FlutterFlowTheme.blue1,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Text(
                                          widget.price.toString(),
                                          style: FlutterFlowTheme.bodyText1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 10),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.shadow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Tickets',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme
                                                .backgroundcolor2,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: FlutterFlowTheme.violet1,
                                              width: 1,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '1',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.white2,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Visibility(
                                      visible: widget.isPayed ?? true,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 10, 5, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                AuthUserStreamWidget(
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      currentUserPhoto,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
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
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          currentUserDisplayName,
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          currentUserEmail,
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
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Visibility(
                                                  visible:
                                                      widget.isFree ?? true,
                                                  child: Text(
                                                    'Free',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '\$ ${widget.price.toString()}',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.normal,
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
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: FlutterFlowTheme.blue1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Total',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Visibility(
                                visible: widget.isFree ?? true,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    '\$ 0.0',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  '\$ ${widget.price.toString()}',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                child: Text(
                                  'Includes service charge',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
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
                Visibility(
                  visible: functions.eventIsPublic(widget.eventType) ?? true,
                  child: Padding(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Visibility(
                            visible: widget.isFree ?? true,
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton1 = true);
                                try {
                                  final eventTicketsCreateData =
                                      createEventTicketsRecordData(
                                    event: widget.refEvent,
                                    user: currentUserReference,
                                    noTickets: 1,
                                    status: 'Approved',
                                    approved: true,
                                    userId: currentUserUid,
                                    approvedByUser: true,
                                    invitedByUser: false,
                                    uniqueCode: functions
                                        .uniqueCodeEvent(widget.eventTitle),
                                  );
                                  await EventTicketsRecord.collection
                                      .doc()
                                      .set(eventTicketsCreateData);

                                  final notificationsCreateData =
                                      createNotificationsRecordData(
                                    user: widget.ownerEvent,
                                    message:
                                        '${currentUserDisplayName} has purchased a ticket to your event',
                                    date: getCurrentTimestamp,
                                    event: widget.refEvent,
                                    hasEvent: true,
                                    type: 'buyTicket',
                                    notificationImage: currentUserPhoto,
                                  );
                                  await NotificationsRecord.collection
                                      .doc()
                                      .set(notificationsCreateData);

                                  final eventsUpdateData = {
                                    'grantedTickets': FieldValue.increment(1),
                                  };
                                  await widget.refEvent
                                      .update(eventsUpdateData);
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x4D080618),
                                    barrierColor: Color(0x4D080618),
                                    context: context,
                                    builder: (context) {
                                      return ModalConfirmationPublicTickeWidget();
                                    },
                                  );
                                } finally {
                                  setState(() => _loadingButton1 = false);
                                }
                              },
                              text: 'Get Ticket',
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
                              loading: _loadingButton1,
                            ),
                          ),
                          Visibility(
                            visible: widget.isPayed ?? true,
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton2 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ProfileAddPaymentMethodWidget(
                                        refEvent: widget.refEvent,
                                      ),
                                    ),
                                  );
                                } finally {
                                  setState(() => _loadingButton2 = false);
                                }
                              },
                              text: 'Get Ticket',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible:
                      !(functions.eventIsPrivate(widget.eventType)) ?? true,
                  child: Padding(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Visibility(
                            visible: widget.isFree ?? true,
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton3 = true);
                                try {
                                  final eventTicketsCreateData =
                                      createEventTicketsRecordData(
                                    event: widget.refEvent,
                                    user: currentUserReference,
                                    noTickets: 1,
                                    status: 'Pending',
                                    approved: false,
                                    userId: currentUserUid,
                                    approvedByUser: true,
                                  );
                                  await EventTicketsRecord.collection
                                      .doc()
                                      .set(eventTicketsCreateData);

                                  final notificationsCreateData =
                                      createNotificationsRecordData(
                                    user: widget.ownerEvent,
                                    message:
                                        '${currentUserDisplayName} has sent you a request.',
                                    date: getCurrentTimestamp,
                                    event: widget.refEvent,
                                    hasEvent: true,
                                    type: 'requestTicket',
                                    notificationImage: currentUserPhoto,
                                  );
                                  await NotificationsRecord.collection
                                      .doc()
                                      .set(notificationsCreateData);
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x4D080618),
                                    barrierColor: Color(0x4D080618),
                                    context: context,
                                    builder: (context) {
                                      return ModalConfirmationTicketWidget();
                                    },
                                  );
                                } finally {
                                  setState(() => _loadingButton3 = false);
                                }
                              },
                              text: 'Send request',
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
                              loading: _loadingButton3,
                            ),
                          ),
                          Visibility(
                            visible: widget.isPayed ?? true,
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton4 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ProfileAddPaymentMethodWidget(
                                        refEvent: widget.refEvent,
                                      ),
                                    ),
                                  );
                                } finally {
                                  setState(() => _loadingButton4 = false);
                                }
                              },
                              text: 'Send request',
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
                              loading: _loadingButton4,
                            ),
                          )
                        ],
                      ),
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
