import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalReporteventWidget extends StatefulWidget {
  ModalReporteventWidget({
    Key key,
    this.type,
  }) : super(key: key);

  final String type;

  @override
  _ModalReporteventWidgetState createState() => _ModalReporteventWidgetState();
}

class _ModalReporteventWidgetState extends State<ModalReporteventWidget> {
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
            height: 440,
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
                Image.asset(
                  'assets/images/check.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Thank your for your comments!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: Text(
                    'You report: ${widget.type}',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Nunito',
                      color: Color(0xFF9060FF),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: Text(
                    'Your comments are important to help improve our community.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Nunito',
                      color: FlutterFlowTheme.white2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70, 30, 70, 0),
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
                                  NavBarPage(initialPage: 'HOME'),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton = false);
                        }
                      },
                      text: 'Accept',
                      options: FFButtonOptions(
                        width: double.infinity,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
