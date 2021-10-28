import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_circle/profile_circle_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyprofileWidget extends StatefulWidget {
  MyprofileWidget({
    Key key,
    this.refEvent,
    this.eventTitle,
    this.eventLocation,
    this.eventOwnerName,
    this.eventDate,
    this.eventType,
    this.eventGuest,
    this.eventPhoto,
    this.ownerPhoto,
    this.isPlus21,
    this.isFree,
    this.price,
    this.isPayed,
    this.eventDetail,
  }) : super(key: key);

  final DocumentReference refEvent;
  final String eventTitle;
  final String eventLocation;
  final String eventOwnerName;
  final DateTime eventDate;
  final String eventType;
  final int eventGuest;
  final String eventPhoto;
  final String ownerPhoto;
  final bool isPlus21;
  final bool isFree;
  final double price;
  final bool isPayed;
  final String eventDetail;

  @override
  _MyprofileWidgetState createState() => _MyprofileWidgetState();
}

class _MyprofileWidgetState extends State<MyprofileWidget> {
  bool _loadingButton = false;
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
                              Icons.arrow_back_ios_rounded,
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
                                'Username',
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 175,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 130,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.primaryColor,
                                    FlutterFlowTheme.shadow
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/images/gxif9_600',
                                  width: double.infinity,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/174/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Fullname',
                              style: FlutterFlowTheme.subtitle1,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                              child: Text(
                                'Biography',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet1,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 10),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileCircleWidget(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '60',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 18,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                'Inner Circle',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileCircleWidget(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '120',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 18,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                'Outer Circle',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                  fontSize: 15,
                                                ),
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
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  100, 0, 100, 0),
                              child: Container(
                                width: 10,
                                height: 35,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.primaryColor,
                                      Color(0xFF844DFF)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(1, -0.94),
                                    end: AlignmentDirectional(-1, 0.94),
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('ButtonGradient pressed ...');
                                  },
                                  text: 'Edit profile',
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 35,
                                    color: Color(0x003A2EE8),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Nunito',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  loading: _loadingButton,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 25, 0, 10),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.primaryColor,
                                                  FlutterFlowTheme
                                                      .secondaryColor
                                                ],
                                                stops: [0, 1],
                                                begin:
                                                    AlignmentDirectional(0, -1),
                                                end: AlignmentDirectional(0, 1),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 120,
                                                height: 120,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/284/600',
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.primaryColor,
                                                  FlutterFlowTheme
                                                      .secondaryColor
                                                ],
                                                stops: [0, 1],
                                                begin:
                                                    AlignmentDirectional(0, -1),
                                                end: AlignmentDirectional(0, 1),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 120,
                                                height: 120,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/284/600',
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.primaryColor,
                                                  FlutterFlowTheme
                                                      .secondaryColor
                                                ],
                                                stops: [0, 1],
                                                begin:
                                                    AlignmentDirectional(0, -1),
                                                end: AlignmentDirectional(0, 1),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 120,
                                                height: 120,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/284/600',
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.primaryColor,
                                                  FlutterFlowTheme
                                                      .secondaryColor
                                                ],
                                                stops: [0, 1],
                                                begin:
                                                    AlignmentDirectional(0, -1),
                                                end: AlignmentDirectional(0, 1),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 120,
                                                height: 120,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/284/600',
                                                ),
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
                      Stack(
                        children: [
                          Container(
                            height: 800,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: DefaultTabController(
                                length: 4,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      labelColor: FlutterFlowTheme.violet1,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.white2,
                                      labelStyle: GoogleFonts.getFont(
                                        'Roboto',
                                      ),
                                      indicatorColor: FlutterFlowTheme.violet1,
                                      tabs: [
                                        Tab(
                                          text: 'Public',
                                        ),
                                        Tab(
                                          text: 'Private',
                                        ),
                                        Tab(
                                          text: 'Tagged',
                                        ),
                                        Tab(
                                          text: 'Events',
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: GridView(
                                              padding: EdgeInsets.zero,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5,
                                                childAspectRatio: 1,
                                              ),
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: GridView(
                                              padding: EdgeInsets.zero,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5,
                                                childAspectRatio: 1,
                                              ),
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: GridView(
                                              padding: EdgeInsets.zero,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5,
                                                childAspectRatio: 1,
                                              ),
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.network(
                                                  'https://picsum.photos/seed/502/600',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 5, 15, 5),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0x00F5F5F5),
                                                    elevation: 1,
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 150,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            FlutterFlowTheme
                                                                .shadow,
                                                            Color(0xFF291F65)
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
                                                                .circular(10),
                                                      ),
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
                                                                          0, 0),
                                                                  child: Stack(
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        child: Image
                                                                            .network(
                                                                          '',
                                                                          width:
                                                                              120,
                                                                          height:
                                                                              120,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.8,
                                                                            0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              50,
                                                                              10,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                25,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.blue1,
                                                                              borderRadius: BorderRadius.circular(60),
                                                                            ),
                                                                            child:
                                                                                Align(
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
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                    child:
                                                                        Column(
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
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme
                                                                              .bodyText2
                                                                              .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                FlutterFlowTheme.violet1,
                                                                            fontWeight:
                                                                                FontWeight.w300,
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
                                                                                FontWeight.w600,
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
                                                                                FontWeight.w300,
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
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
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
