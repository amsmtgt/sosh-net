import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTicketPurchaseWidget extends StatefulWidget {
  ProfileTicketPurchaseWidget({Key key}) : super(key: key);

  @override
  _ProfileTicketPurchaseWidgetState createState() =>
      _ProfileTicketPurchaseWidgetState();
}

class _ProfileTicketPurchaseWidgetState
    extends State<ProfileTicketPurchaseWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      child: StreamBuilder<List<UsersRecord>>(
        stream: queryUsersRecord(
          queryBuilder: (usersRecord) =>
              usersRecord.where('uid', isEqualTo: currentUserUid),
          singleRecord: true,
        ),
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
          List<UsersRecord> profileTicketPurchaseUsersRecordList =
              snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final profileTicketPurchaseUsersRecord =
              profileTicketPurchaseUsersRecordList.isNotEmpty
                  ? profileTicketPurchaseUsersRecordList.first
                  : null;
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                  child: Text(
                                    'Ticket purchase',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2,
                                  ),
                                ),
                                Text(
                                  'Cancel',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet1,
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
                      height: 400,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.82,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Color(0xC5DDDDDD),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/tarjeta.jpg',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 70, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '**** **** ****',
                                                style: FlutterFlowTheme.title3
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(3, 0, 0, 0),
                                                child: Text(
                                                  '7214',
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(38, 0, 15, 0),
                                                child: Text(
                                                  'Rachel Smith',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w600,
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 35, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'NY Apartment Party',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      35, 15, 35, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.shadow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '1 Ticket',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.white2,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Text(
                                                'Price',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: Text(
                                            'Includes service charge',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet2,
                                              fontSize: 13,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Total:',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 0, 0, 0),
                                        child: Text(
                                          '\$',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '150',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
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
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 25),
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
                            onPressed: () {
                              print('ButtonGradient pressed ...');
                            },
                            text: 'Confirm',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40,
                              color: Color(0x003A2EE8),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                                fontSize: 18,
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
