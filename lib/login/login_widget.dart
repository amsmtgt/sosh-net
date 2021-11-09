import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../signup/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController passwordController;
  bool passwordVisibility;
  TextEditingController usernameController;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    passwordVisibility = false;
    usernameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/SOSHLogin-01.jpg',
                  ).image,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x55080618),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 170, 0, 0),
                        child: Text(
                          'Login',
                          style: FlutterFlowTheme.title2.override(
                            fontFamily: 'Nunito',
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 36, 25, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            isAndroid
                                ? Container()
                                : Align(
                                    alignment: AlignmentDirectional(0.06, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        setState(() => _loadingButton1 = true);
                                        try {
                                          final user =
                                              await signInWithApple(context);
                                          if (user == null) {
                                            return;
                                          }
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NavBarPage(
                                                  initialPage: 'HOME'),
                                            ),
                                          );
                                        } finally {
                                          setState(
                                              () => _loadingButton1 = false);
                                        }
                                      },
                                      text: 'Apple',
                                      icon: FaIcon(
                                        FontAwesomeIcons.apple,
                                        size: 23,
                                      ),
                                      options: FFButtonOptions(
                                        width: 150,
                                        height: 44,
                                        color: Colors.white,
                                        textStyle: GoogleFonts.getFont(
                                          'Nunito',
                                          color:
                                              FlutterFlowTheme.backgroundcolor1,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17,
                                        ),
                                        elevation: 4,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0,
                                        ),
                                        borderRadius: 50,
                                      ),
                                      loading: _loadingButton1,
                                    ),
                                  ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 150,
                                height: 44,
                                child: Stack(
                                  alignment: AlignmentDirectional(
                                      -0.050000000000000044, 0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(
                                              () => _loadingButton2 = true);
                                          try {
                                            final user =
                                                await signInWithGoogle(context);
                                            if (user == null) {
                                              return;
                                            }
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBarPage(
                                                        initialPage: 'HOME'),
                                              ),
                                            );
                                          } finally {
                                            setState(
                                                () => _loadingButton2 = false);
                                          }
                                        },
                                        text: 'Google',
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.transparent,
                                          size: 20,
                                        ),
                                        options: FFButtonOptions(
                                          width: 260,
                                          height: 44,
                                          color: Colors.white,
                                          textStyle: GoogleFonts.getFont(
                                            'Nunito',
                                            color: FlutterFlowTheme
                                                .backgroundcolor1,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                          ),
                                          elevation: 4,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius: 50,
                                        ),
                                        loading: _loadingButton2,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-0.55, 0),
                                      child: Container(
                                        width: 22,
                                        height: 22,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                          fit: BoxFit.contain,
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
                        padding: EdgeInsetsDirectional.fromSTEB(25, 40, 25, 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xFF844DFF),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Text(
                                'OR ',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.white2,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xFF844DFF),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                        child: TextFormField(
                          controller: usernameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Mobile number',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
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
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.white2,
                            fontWeight: FontWeight.normal,
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Field is required';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 0),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
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
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
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
                            color: FlutterFlowTheme.white2,
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
                        padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
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
                              setState(() => _loadingButton3 = true);
                              try {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'HOME'),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton3 = false);
                              }
                            },
                            text: 'Continue',
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
                            loading: _loadingButton3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(),
                          child: Text(
                            'Forgot Password',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.violet2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account? ',
                              style: FlutterFlowTheme.bodyText1,
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign up',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
