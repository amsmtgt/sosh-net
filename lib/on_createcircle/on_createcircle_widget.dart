import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../on_location/on_location_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OnCreatecircleWidget extends StatefulWidget {
  OnCreatecircleWidget({Key key}) : super(key: key);

  @override
  _OnCreatecircleWidgetState createState() => _OnCreatecircleWidgetState();
}

class _OnCreatecircleWidgetState extends State<OnCreatecircleWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  bool _loadingButton7 = false;
  bool _loadingButton8 = false;
  bool _loadingButton9 = false;
  bool _loadingButton10 = false;
  bool _loadingButton11 = false;
  bool _loadingButton12 = false;
  bool _loadingButton13 = false;
  bool _loadingButton14 = false;
  bool _loadingButton15 = false;
  bool _loadingButton16 = false;
  bool _loadingButton17 = false;
  bool _loadingButton18 = false;
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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Sin_titulo-1-02.jpg',
            ).image,
          ),
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 44, 15, 0),
                  child: Container(
                    width: 600,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.blue1,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.blue1,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: Color(0xFF666FEC),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 2,
                                  ),
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
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        'Create your circle',
                        style: FlutterFlowTheme.subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Text(
                        'Add 20 people to join your circle.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 460,
                              decoration: BoxDecoration(),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 450,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 15, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_1.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton1,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_2.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_3.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton3,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_2.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton4,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_3.jpg',
                                                          width: 50,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton5,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_1.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton6,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.asset(
                                                          'assets/images/Screenshot_2.jpg',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton7,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton8,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton9,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton11,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton12,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton13,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton15,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/147/600',
                                                          width: 50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                10.86, 0.2),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Username',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.4, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 6, 0, 0),
                                                      child: Container(
                                                        width: 80,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                              Color(0xFF844DFF)
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
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.05, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Add',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 35,
                                                              color: Color(
                                                                  0x00844DFF),
                                                              textStyle:
                                                                  FlutterFlowTheme
                                                                      .subtitle2
                                                                      .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius: 100,
                                                            ),
                                                            loading:
                                                                _loadingButton16,
                                                          ),
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
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 100, 50, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() => _loadingButton17 = true);
                          try {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnLocationWidget(),
                              ),
                            );
                          } finally {
                            setState(() => _loadingButton17 = false);
                          }
                        },
                        text: 'Add to all',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: Color(0x003A2EE8),
                          textStyle: FlutterFlowTheme.subtitle2.override(
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
                        loading: _loadingButton17,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 44),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            setState(() => _loadingButton18 = true);
                            try {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OnLocationWidget(),
                                ),
                              );
                            } finally {
                              setState(() => _loadingButton18 = false);
                            }
                          },
                          text: 'Next',
                          options: FFButtonOptions(
                            width: 130,
                            height: 44,
                            color: Color(0x003A2EE8),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.violet2,
                              fontSize: 16,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                          loading: _loadingButton18,
                        ),
                      )
                    ],
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
