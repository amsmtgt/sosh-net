import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalLogoutWidget extends StatefulWidget {
  ModalLogoutWidget({Key key}) : super(key: key);

  @override
  _ModalLogoutWidgetState createState() => _ModalLogoutWidgetState();
}

class _ModalLogoutWidgetState extends State<ModalLogoutWidget> {
  bool _loadingButton = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
        child: Material(
          color: Colors.transparent,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: FlutterFlowTheme.backgroundcolor1,
                )
              ],
              gradient: LinearGradient(
                colors: [Color(0xFF050211), FlutterFlowTheme.backgroundcolor1],
                stops: [0, 1],
                begin: AlignmentDirectional(0.37, -1),
                end: AlignmentDirectional(-0.37, 1),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Text(
                    'Are you sure you want \nto logout?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 140,
                          height: 42,
                          color: Color(0x002431E4),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.violet2,
                            fontSize: 18,
                          ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.violet2,
                            width: 2,
                          ),
                          borderRadius: 50,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Container(
                            width: 20,
                            height: 42,
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
                                  await signOut();
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WelcomeWidget(),
                                    ),
                                    (r) => false,
                                  );
                                } finally {
                                  setState(() => _loadingButton = false);
                                }
                              },
                              text: 'Logout',
                              options: FFButtonOptions(
                                width: 20,
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
                              loading: _loadingButton,
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
      ),
    );
  }
}
