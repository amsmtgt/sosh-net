import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMyEventsWidget extends StatefulWidget {
  ProfileMyEventsWidget({Key key}) : super(key: key);

  @override
  _ProfileMyEventsWidgetState createState() => _ProfileMyEventsWidgetState();
}

class _ProfileMyEventsWidgetState extends State<ProfileMyEventsWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
                              Navigator.pop(context);
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
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        onChanged: (_) => setState(() {}),
                                        controller: textController1,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Search',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.violet2,
                                            fontSize: 16,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                          suffixIcon: textController1
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () =>
                                                        textController1.clear(),
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
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.violet2,
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 5),
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
                                                  begin: AlignmentDirectional(
                                                      0.77, 1),
                                                  end: AlignmentDirectional(
                                                      -0.77, -1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
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
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.asset(
                                                            'assets/images/aditya-chinchure-ZhQCZjr9fHo-unsplash.jpg',
                                                            width: 90,
                                                            height: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
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
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Sat, Oct 17',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'at',
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
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        '11 pm EST',
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
                                                                    )
                                                                  ],
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
                                        Card(
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
                                                begin: AlignmentDirectional(
                                                    0.77, 1),
                                                end: AlignmentDirectional(
                                                    -0.77, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                          'assets/images/fmoon.jpg',
                                                          width: 90,
                                                          height: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Sat, Oct 18',
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
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'at',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      '2 am EST',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Text(
                                                                'Electric after party',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (_) => setState(() {}),
                                              controller: textController2,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Search',
                                                hintStyle: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                  fontSize: 16,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.shadow,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            15, 15, 15, 15),
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                  color: FlutterFlowTheme.blue1,
                                                  size: 15,
                                                ),
                                                suffixIcon: textController2
                                                        .text.isNotEmpty
                                                    ? InkWell(
                                                        onTap: () => setState(
                                                          () => textController2
                                                              .clear(),
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
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme.violet2,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 5),
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                          'assets/images/aditya-chinchure-ZhQCZjr9fHo-unsplash.jpg',
                                                          width: 90,
                                                          height: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 10, 0),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Sat, Oct 17',
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
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'at',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      '11 pm EST',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
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
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Container(
                                                          width: 130,
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
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.94),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.94),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Get Ticket',
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
                                                                color: Color(
                                                                    0x08CEB8FF),
                                                                width: 1,
                                                              ),
                                                              borderRadius: 50,
                                                            ),
                                                            loading:
                                                                _loadingButton1,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 5),
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                          'assets/images/e563066ebc165b2fdb3c98e4a01c10db.jpg',
                                                          width: 90,
                                                          height: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 10, 0),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Sat, Oct 29',
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
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'at',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      '8 pm EST',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Text(
                                                                'Halloween party',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Container(
                                                          width: 130,
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
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.94),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.94),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Get Ticket',
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
                                                                color: Color(
                                                                    0x08CEB8FF),
                                                                width: 1,
                                                              ),
                                                              borderRadius: 50,
                                                            ),
                                                            loading:
                                                                _loadingButton2,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 5),
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                          'assets/images/unnamed.jpg',
                                                          width: 90,
                                                          height: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 10, 0),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Sat, Oct 18',
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
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'at',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      '1 am EST',
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
                                                                            FontWeight.w300,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Text(
                                                                'NYC After party',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Container(
                                                          width: 130,
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
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.94),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.94),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Get Ticket',
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
                                                                color: Color(
                                                                    0x08CEB8FF),
                                                                width: 1,
                                                              ),
                                                              borderRadius: 50,
                                                            ),
                                                            loading:
                                                                _loadingButton3,
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
