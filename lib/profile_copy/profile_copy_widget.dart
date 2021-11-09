import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_add_payment_method/profile_add_payment_method_widget.dart';
import '../profile_ticket_purchase/profile_ticket_purchase_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCopyWidget extends StatefulWidget {
  ProfileCopyWidget({Key key}) : super(key: key);

  @override
  _ProfileCopyWidgetState createState() => _ProfileCopyWidgetState();
}

class _ProfileCopyWidgetState extends State<ProfileCopyWidget> {
  String radioButtonValue;
  TextEditingController cVVInputController;
  TextEditingController expireDateInputController;
  TextEditingController nameCardInputController;
  TextEditingController numberCardInputController;
  bool checkboxListTileValue;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cVVInputController = TextEditingController();
    expireDateInputController = TextEditingController();
    nameCardInputController = TextEditingController();
    numberCardInputController = TextEditingController();
  }

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
          List<UsersRecord> profileCopyUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final profileCopyUsersRecord = profileCopyUsersRecordList.isNotEmpty
              ? profileCopyUsersRecordList.first
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Payment method',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF9060FF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 15, 15, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 60,
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
                                                    15, 0, 0, 0),
                                            child: FlutterFlowRadioButton(
                                              options: ['Visa **** 1589'],
                                              onChanged: (value) {
                                                setState(() =>
                                                    radioButtonValue = value);
                                              },
                                              optionHeight: 25,
                                              textStyle: FlutterFlowTheme
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: Colors.black,
                                              ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.bodyText1
                                                      .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                              buttonPosition:
                                                  RadioButtonPosition.left,
                                              direction: Axis.vertical,
                                              radioButtonColor: FlutterFlowTheme
                                                  .secondaryColor,
                                              inactiveRadioButtonColor:
                                                  FlutterFlowTheme
                                                      .secondaryColor,
                                              toggleable: false,
                                              horizontalAlignment:
                                                  WrapAlignment.start,
                                              verticalAlignment:
                                                  WrapCrossAlignment.start,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfileAddPaymentMethodWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Add payment method',
                                          options: FFButtonOptions(
                                            width: 200,
                                            height: 40,
                                            color: Color(0x002431E4),
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet2,
                                              fontSize: 16,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 50,
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
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 20, 15, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Name of card',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFFFEFEFE),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 8, 15, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.shadow,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller:
                                                    nameCardInputController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                                keyboardType:
                                                    TextInputType.streetAddress,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Card number',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 8, 15, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.shadow,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 15, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: TextFormField(
                                                      controller:
                                                          numberCardInputController,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                            .tertiaryColor,
                                                      ),
                                                      keyboardType:
                                                          TextInputType
                                                              .streetAddress,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 35,
                                                        height: 35,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x6A2431E4),
                                                              Color(0x14080618)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    -0.64, 1),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0.64, -1),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(11),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Icon(
                                                          Icons.credit_card,
                                                          color:
                                                              FlutterFlowTheme
                                                                  .blue1,
                                                          size: 20,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
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
                                              Text(
                                                'Expire date',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(137, 0, 0, 0),
                                                child: Text(
                                                  'CVV',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 8, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 15, 0),
                                                child: Container(
                                                  width: 200,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.shadow,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: TextFormField(
                                                            controller:
                                                                expireDateInputController,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: FlutterFlowTheme
                                                                  .tertiaryColor,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .streetAddress,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 130,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color:
                                                      FlutterFlowTheme.shadow,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: TextFormField(
                                                          controller:
                                                              cVVInputController,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                          ),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            color: FlutterFlowTheme
                                                                .tertiaryColor,
                                                          ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .streetAddress,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValue ??= true,
                                      onChanged: (newValue) => setState(() =>
                                          checkboxListTileValue = newValue),
                                      title: Text(
                                        'Save Credit card info',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      activeColor:
                                          FlutterFlowTheme.secondaryColor,
                                      checkColor:
                                          FlutterFlowTheme.tertiaryColor,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 5, 15, 25),
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
                                          ProfileTicketPurchaseWidget(),
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
