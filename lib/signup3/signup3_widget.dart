import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../on_uploadphoto/on_uploadphoto_widget.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup3Widget extends StatefulWidget {
  Signup3Widget({Key key}) : super(key: key);

  @override
  _Signup3WidgetState createState() => _Signup3WidgetState();
}

class _Signup3WidgetState extends State<Signup3Widget> {
  TextEditingController birthdayController;
  TextEditingController fullnameController;
  TextEditingController usernameController;
  TextEditingController passwordController;
  bool passwordVisibility;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    birthdayController = TextEditingController();
    fullnameController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(currentUserReference),
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
          final signup3UsersRecord = snapshot.data;
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
                                        builder: (context) => WelcomeWidget(),
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
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Create account',
                                style: FlutterFlowTheme.subtitle1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Fullname',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                              child: TextFormField(
                                controller: fullnameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.shadow,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Username',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                              child: TextFormField(
                                controller: usernameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.shadow,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Date of birth',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                              child: TextFormField(
                                controller: birthdayController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'DD/MM/YYYY',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.white2,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.shadow,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.white2,
                                  fontWeight: FontWeight.normal,
                                ),
                                keyboardType: TextInputType.datetime,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Password',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.shadow,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.secondaryColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Field is required';
                                  }
                                  if (val.length < 8) {
                                    return 'Requires at least 8 characters.';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 5, 25, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Must be at least 8 characters',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.white2,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 40, 25, 0),
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
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OnUploadphotoWidget(),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton = false);
                                    }
                                  },
                                  text: 'Create account',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40,
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
