import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import '../on_uploadphoto/on_uploadphoto_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWidget extends StatefulWidget {
  WelcomeWidget({Key key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'assets/images/fondowelcome6.jpg',
                ).image,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x5C080618),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Image.asset(
                            'assets/images/9hsjc_2.png',
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 10),
                        child: Text(
                          'Sign up',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
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
                                              builder: (context) =>
                                                  OnUploadphotoWidget(),
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
                                              FlutterFlowTheme.backgroundcolor2,
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
                                                    OnUploadphotoWidget(),
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
                                                .backgroundcolor2,
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
                        padding: EdgeInsetsDirectional.fromSTEB(25, 30, 25, 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 2,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.secondaryColor,
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
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
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
                                    builder: (context) => OnUploadphotoWidget(),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton3 = false);
                              }
                            },
                            text: 'Sign up with mobile number',
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Text(
                          'By signing up, you accept Terms and Conditions.',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.white2,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'HOME'),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                'Already have an account? ',
                                style: FlutterFlowTheme.bodyText1,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                'LOGIN',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet1,
                                  fontWeight: FontWeight.bold,
                                ),
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
    );
  }
}
