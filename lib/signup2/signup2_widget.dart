import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup/signup_widget.dart';
import '../signup3/signup3_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup2Widget extends StatefulWidget {
  Signup2Widget({Key key}) : super(key: key);

  @override
  _Signup2WidgetState createState() => _Signup2WidgetState();
}

class _Signup2WidgetState extends State<Signup2Widget> {
  TextEditingController usernameController;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
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
                                    builder: (context) => SignupWidget(),
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
                        Image.network(
                          'https://picsum.photos/seed/319/600',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            'Verification',
                            style: FlutterFlowTheme.title3.override(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                          child: Text(
                            'Please enter the verification code we sent to your mobile +91 15263478',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Nunito',
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                  'Change number',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                'Resend code',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.violet1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
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
                                  if (!formKey.currentState.validate()) {
                                    return;
                                  }
                                  if (usernameController.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Enter SMS verification code.'),
                                      ),
                                    );
                                    return;
                                  }
                                  final phoneVerifiedUser = await verifySmsCode(
                                    context: context,
                                    smsCode: usernameController.text,
                                  );
                                  if (phoneVerifiedUser == null) {
                                    return;
                                  }
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup3Widget(),
                                    ),
                                  );
                                } finally {
                                  setState(() => _loadingButton = false);
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
      ),
    );
  }
}
