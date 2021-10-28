import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../events_detail/events_detail_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../host_event/host_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
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
          List<UsersRecord> homeUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final homeUsersRecord =
              homeUsersRecordList.isNotEmpty ? homeUsersRecordList.first : null;
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
                    FlutterFlowTheme.backgroundcolor2
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
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/logo2.png',
                                          width: 140,
                                          fit: BoxFit.contain,
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
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
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
                                                Icons.chat_outlined,
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 30, 15, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 160,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.secondaryColor,
                                                FlutterFlowTheme.primaryColor
                                              ],
                                              stops: [0, 1],
                                              begin: AlignmentDirectional(
                                                  1, -0.94),
                                              end: AlignmentDirectional(
                                                  -1, 0.94),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(
                                                  () => _loadingButton1 = true);
                                              try {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HostEventWidget(),
                                                  ),
                                                );
                                              } finally {
                                                setState(() =>
                                                    _loadingButton1 = false);
                                              }
                                            },
                                            text: 'Host event',
                                            icon: Icon(
                                              Icons.calendar_today_rounded,
                                              color: FlutterFlowTheme.white2,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 160,
                                              height: 44,
                                              color: Color(0x001A134D),
                                              textStyle: FlutterFlowTheme
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                              ),
                                              elevation: 2,
                                              borderSide: BorderSide(
                                                color: Color(0x0054476F),
                                                width: 1,
                                              ),
                                              borderRadius: 50,
                                            ),
                                            loading: _loadingButton1,
                                          ),
                                        ),
                                        Container(
                                          width: 160,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.shadow,
                                                FlutterFlowTheme.primaryColor
                                              ],
                                              stops: [0, 1],
                                              begin: AlignmentDirectional(
                                                  1, -0.94),
                                              end: AlignmentDirectional(
                                                  -1, 0.94),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Create post',
                                            icon: Icon(
                                              Icons.add_circle_outline,
                                              color: FlutterFlowTheme.white2,
                                              size: 20,
                                            ),
                                            options: FFButtonOptions(
                                              width: 160,
                                              height: 44,
                                              color: Color(0x001A134D),
                                              textStyle:
                                                  FlutterFlowTheme.bodyText1,
                                              elevation: 2,
                                              borderSide: BorderSide(
                                                color: Color(0x008141FF),
                                                width: 1,
                                              ),
                                              borderRadius: 50,
                                            ),
                                            loading: _loadingButton2,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 0, 0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme
                                                            .primaryColor,
                                                        FlutterFlowTheme
                                                            .secondaryColor
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      end: AlignmentDirectional(
                                                          0, 1),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Container(
                                                      width: 65,
                                                      height: 65,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/e563066ebc165b2fdb3c98e4a01c10db.jpg',
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    'User story',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme
                                                            .primaryColor,
                                                        FlutterFlowTheme
                                                            .secondaryColor
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      end: AlignmentDirectional(
                                                          0, 1),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Container(
                                                      width: 60,
                                                      height: 60,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/unnamed.jpg',
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    'User story',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme
                                                            .primaryColor,
                                                        FlutterFlowTheme
                                                            .secondaryColor
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      end: AlignmentDirectional(
                                                          0, 1),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Container(
                                                      width: 65,
                                                      height: 65,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/nightlife-people-having-fun-bars-clubs.jpg',
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    'User story',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme
                                                            .primaryColor,
                                                        FlutterFlowTheme
                                                            .secondaryColor
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      end: AlignmentDirectional(
                                                          0, 1),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Container(
                                                      width: 65,
                                                      height: 65,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Birthday-Party-Sydney-Banner.jpg',
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    'User story',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme
                                                            .primaryColor,
                                                        FlutterFlowTheme
                                                            .secondaryColor
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      end: AlignmentDirectional(
                                                          0, 1),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 2, 0),
                                                    child: Container(
                                                      width: 65,
                                                      height: 65,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        'https://picsum.photos/seed/89/600',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    'User story',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .violet2,
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child:
                                            StreamBuilder<List<EventsRecord>>(
                                          stream: queryEventsRecord(),
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
                                            List<EventsRecord>
                                                listViewEventsRecordList =
                                                snapshot.data;
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  listViewEventsRecordList
                                                      .length,
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewEventsRecord =
                                                    listViewEventsRecordList[
                                                        listViewIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 5, 15, 5),
                                                  child: StreamBuilder<
                                                      UsersRecord>(
                                                    stream:
                                                        UsersRecord.getDocument(
                                                            listViewEventsRecord
                                                                .owner),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      final cardUsersRecord =
                                                          snapshot.data;
                                                      return InkWell(
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
                                                                    cardUsersRecord
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
                                                                ownerEvent:
                                                                    listViewEventsRecord
                                                                        .owner,
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
                                                            height: 150,
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
                                                                        0.5,
                                                                        -1),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        -0.5,
                                                                        1),
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                        alignment: AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(10),
                                                                              child: Image.network(
                                                                                listViewEventsRecord.photoUrl,
                                                                                width: 120,
                                                                                height: 120,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.8, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                                                                                child: Container(
                                                                                  width: 60,
                                                                                  height: 25,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.blue1,
                                                                                    borderRadius: BorderRadius.circular(60),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(0, 0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Text(
                                                                                          'GOING',
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Nunito',
                                                                                            color: FlutterFlowTheme.tertiaryColor,
                                                                                            fontSize: 11,
                                                                                            fontWeight: FontWeight.bold,
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
                                                                                dateTimeFormat('MMMMEEEEd', listViewEventsRecord.startDateEvent),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.bodyText2.override(
                                                                                  fontFamily: 'Nunito',
                                                                                  color: FlutterFlowTheme.violet1,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                listViewEventsRecord.name,
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
                                                                                    listViewEventsRecord.ownerName,
                                                                                    style: FlutterFlowTheme.bodyText2.override(
                                                                                      fontFamily: 'Nunito',
                                                                                      fontSize: 13,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.location_on_outlined,
                                                                                      color: FlutterFlowTheme.blue1,
                                                                                      size: 16,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                      child: Text(
                                                                                        listViewEventsRecord.location,
                                                                                        style: FlutterFlowTheme.bodyText1.override(
                                                                                          fontFamily: 'Nunito',
                                                                                          color: FlutterFlowTheme.white2,
                                                                                          fontSize: 12,
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 20, 15, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Color(0x00F5F5F5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 250,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00EEEEEE),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(10),
                                                        topRight:
                                                            Radius.circular(10),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/unnamed.jpg',
                                                        width: 100,
                                                        height: 300,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 2,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(10),
                                                        bottomRight:
                                                            Radius.circular(10),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .shadow,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        5,
                                                                        10,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 40,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme
                                                                        .primaryColor,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3,
                                                                            3,
                                                                            3,
                                                                            3),
                                                                    child:
                                                                        Container(
                                                                      width: 30,
                                                                      height:
                                                                          30,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/logan-weaver-Isle-8YpbIQ-unsplash.jpg',
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'Abby',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText2
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: FlutterFlowTheme
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Love this',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Nunito',
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .star_border_purple500_sharp,
                                                                        color: FlutterFlowTheme
                                                                            .violet2,
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .chat_bubble_outline_outlined,
                                                                        color: FlutterFlowTheme
                                                                            .violet2,
                                                                        size:
                                                                            18,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .share_outlined,
                                                                        color: FlutterFlowTheme
                                                                            .violet2,
                                                                        size:
                                                                            18,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    )
                                                                  ],
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
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 15, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Color(0x00F5F5F5),
                                              elevation: 1,
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 220,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        FlutterFlowTheme.shadow,
                                                        Color(0xFF291F65)
                                                      ],
                                                      stops: [0, 1],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0.5, -1),
                                                      end: AlignmentDirectional(
                                                          -0.5, 1),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 60,
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
                                                                      0.37, -1),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -0.37, 1),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 40,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme
                                                                        .secondaryColor,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3,
                                                                            3,
                                                                            3,
                                                                            3),
                                                                    child:
                                                                        Container(
                                                                      width: 30,
                                                                      height:
                                                                          30,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/young-happy-blonde-girl-posing-beach-wearing-straw-hat-heart-cute-sunglasses-enjoy-her-summer-vacation-near-ocean-wearing-bikini-boho-jacket_291049-1320.jpg',
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Rebeca Cook is atending',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Nunito',
                                                                        color: FlutterFlowTheme
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          10,
                                                                          15,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/low-angle-woman-mixing-club-mock-up_23-2148325408.jpg',
                                                                      width:
                                                                          120,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
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
                                                                            'Sat, Oct 17 at 11 pm EST',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                FlutterFlowTheme.bodyText2.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.violet1,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'NYC Apartment party',
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Nunito',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'by Allison John',
                                                                            style:
                                                                                FlutterFlowTheme.bodyText2.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.tertiaryColor,
                                                                              fontSize: 13,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                15,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.locationArrow,
                                                                                  color: FlutterFlowTheme.blue1,
                                                                                  size: 10,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                  child: Text(
                                                                                    '30 miles way from you',
                                                                                    style: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Nunito',
                                                                                      color: FlutterFlowTheme.white2,
                                                                                      fontSize: 12,
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
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 15, 5),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Color(0x00F5F5F5),
                                              elevation: 1,
                                              child: Container(
                                                width: double.infinity,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.shadow,
                                                      Color(0xFF291F65)
                                                    ],
                                                    stops: [0, 1],
                                                    begin: AlignmentDirectional(
                                                        0.5, -1),
                                                    end: AlignmentDirectional(
                                                        -0.5, 1),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15, 0, 15, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/aditya-chinchure-ZhQCZjr9fHo-unsplash.jpg',
                                                              width: 120,
                                                              height: 120,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
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
                                                                  Text(
                                                                    'Sat, Oct 17 at 11 pm EST',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme
                                                                        .bodyText2
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: FlutterFlowTheme
                                                                          .violet1,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'NYC Apartment party',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'by Allison John',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText2
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            15,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .locationArrow,
                                                                          color:
                                                                              FlutterFlowTheme.blue1,
                                                                          size:
                                                                              10,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '30 miles way from you',
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Nunito',
                                                                              color: FlutterFlowTheme.white2,
                                                                              fontSize: 12,
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
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
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
