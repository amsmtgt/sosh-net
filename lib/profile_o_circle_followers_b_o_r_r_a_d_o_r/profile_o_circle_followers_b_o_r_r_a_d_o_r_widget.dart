import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../profile_circle/profile_circle_widget.dart';
import '../profile_inner_circle_request/profile_inner_circle_request_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOCircleFollowersBORRADORWidget extends StatefulWidget {
  ProfileOCircleFollowersBORRADORWidget({Key key}) : super(key: key);

  @override
  _ProfileOCircleFollowersBORRADORWidgetState createState() =>
      _ProfileOCircleFollowersBORRADORWidgetState();
}

class _ProfileOCircleFollowersBORRADORWidgetState
    extends State<ProfileOCircleFollowersBORRADORWidget> {
  TextEditingController textController1;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  bool _loadingButton7 = false;
  bool _loadingButton8 = false;
  TextEditingController textController2;
  bool _loadingButton9 = false;
  bool _loadingButton10 = false;
  bool _loadingButton11 = false;
  bool _loadingButton12 = false;
  bool _loadingButton13 = false;
  bool _loadingButton14 = false;
  bool _loadingButton15 = false;
  bool _loadingButton16 = false;
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
            colors: [Color(0xFF050616), Color(0xFF121327)],
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
                            child: Text(
                              'Username',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.subtitle2,
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 46,
                            icon: Icon(
                              Icons.person_add_alt_1_outlined,
                              color: FlutterFlowTheme.secondaryColor,
                              size: 28,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
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
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.violet1,
                      unselectedLabelColor: FlutterFlowTheme.white2,
                      labelStyle: GoogleFonts.getFont(
                        'Roboto',
                      ),
                      indicatorColor: FlutterFlowTheme.violet1,
                      indicatorWeight: 2,
                      tabs: [
                        Tab(
                          text: 'Inner Circle',
                        ),
                        Tab(
                          text: 'Outer Circle',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 25, 15, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.shadow,
                                            Color(0xFF291F65)
                                          ],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0.37, -1),
                                          end: AlignmentDirectional(-0.37, 1),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
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
                                                Text(
                                                  'Requests',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .backgroundcolor2,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color: FlutterFlowTheme
                                                            .violet1,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          '5',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            color:
                                                                FlutterFlowTheme
                                                                    .white2,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileInnerCircleRequestWidget(),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'View all',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                            .violet2,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 0),
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: FlutterFlowTheme
                                                            .violet2,
                                                        size: 13,
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
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 15, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 110,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.shadow,
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
                                                                .fromSTEB(15, 0,
                                                                    15, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40,
                                                              height: 40,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/731/600',
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
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
                                                                        'Fullname',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          'Username',
                                                                          style: FlutterFlowTheme
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                FlutterFlowTheme.white2,
                                                                            fontSize:
                                                                                14,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    'You met in Title of the event',
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: FlutterFlowTheme
                                                                          .violet1,
                                                                      fontSize:
                                                                          13,
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15, 5,
                                                                    15, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Remove',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 80,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 14,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00CEB8FF),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton1,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed: () {
                                                                  print(
                                                                      'Button pressed ...');
                                                                },
                                                                text: 'Accept',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 80,
                                                                  height: 30,
                                                                  color: Color(
                                                                      0x002431E4),
                                                                  textStyle: FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme
                                                                        .violet2,
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme
                                                                        .violet2,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      50,
                                                                ),
                                                                loading:
                                                                    _loadingButton2,
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
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 25, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (_) => setState(() {}),
                                          controller: textController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Search user...',
                                            hintStyle: FlutterFlowTheme
                                                .bodyText1
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
                                            suffixIcon:
                                                textController1.text.isNotEmpty
                                                    ? InkWell(
                                                        onTap: () => setState(
                                                          () => textController1
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 15),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname ',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton3,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton4,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton5,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton6,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton7,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 5, 15),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
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
                                                            'https://picsum.photos/seed/100/600',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Fullname',
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
                                                                'Username',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet1,
                                                                  fontSize: 14,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Added',
                                                      options: FFButtonOptions(
                                                        width: 90,
                                                        height: 30,
                                                        color:
                                                            Color(0x002431E4),
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .subtitle2
                                                                .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontSize: 15,
                                                        ),
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 50,
                                                      ),
                                                      loading: _loadingButton8,
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
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0x001A134D),
                                                    Color(0x002431E4)
                                                  ],
                                                  stops: [0, 1],
                                                  begin: AlignmentDirectional(
                                                      1, -0.94),
                                                  end: AlignmentDirectional(
                                                      -1, 0.94),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  color: Color(0xFF9667FE),
                                                ),
                                              ),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() =>
                                                      _loadingButton9 = true);
                                                  try {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ProfileCircleWidget(),
                                                      ),
                                                    );
                                                  } finally {
                                                    setState(() =>
                                                        _loadingButton9 =
                                                            false);
                                                  }
                                                },
                                                text: 'My outer circle',
                                                options: FFButtonOptions(
                                                  width: 160,
                                                  height: 44,
                                                  color: Color(0x001A134D),
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: Color(0xFF9667FE),
                                                  ),
                                                  elevation: 2,
                                                  borderSide: BorderSide(
                                                    color: Color(0x008141FF),
                                                    width: 1,
                                                  ),
                                                  borderRadius: 50,
                                                ),
                                                loading: _loadingButton9,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.shadow,
                                                    FlutterFlowTheme
                                                        .primaryColor
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
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
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
                                                                    5, 0, 0, 0),
                                                        child: Text(
                                                          'Followers',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        ),
                                                      )
                                                    ],
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 25, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (_) => setState(() {}),
                                          controller: textController2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Search user...',
                                            hintStyle: FlutterFlowTheme
                                                .bodyText1
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
                                            suffixIcon:
                                                textController2.text.isNotEmpty
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 15),
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton10,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton11,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton12,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton13,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton14,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton15,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    5, 15),
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
                                                                    'https://picsum.photos/seed/100/600',
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
                                                                        'Username',
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
                                                                        'Username',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.violet1,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 90,
                                                                height: 30,
                                                                color: Color(
                                                                    0x002431E4),
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .subtitle2
                                                                        .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  fontSize: 15,
                                                                ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme
                                                                      .violet2,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    50,
                                                              ),
                                                              loading:
                                                                  _loadingButton16,
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
