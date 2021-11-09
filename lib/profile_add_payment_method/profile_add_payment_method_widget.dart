import '../backend/backend.dart';
import '../backend/commerce/payment_manager.dart';
import '../flutter_flow/flutter_flow_credit_card_form.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAddPaymentMethodWidget extends StatefulWidget {
  ProfileAddPaymentMethodWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ProfileAddPaymentMethodWidgetState createState() =>
      _ProfileAddPaymentMethodWidgetState();
}

class _ProfileAddPaymentMethodWidgetState
    extends State<ProfileAddPaymentMethodWidget> {
  String transactionId;
  bool _loadingButton = false;
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventsRecord>(
      stream: EventsRecord.getDocument(widget.refEvent),
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
        final profileAddPaymentMethodEventsRecord = snapshot.data;
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                              InkWell(
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet1,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 10, 15, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Payment method',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.violet2,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
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
                                  height: 160,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.shadow,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 12, 0),
                                    child: FlutterFlowCreditCardForm(
                                      formKey: creditCardFormKey,
                                      creditCardModel: creditCardInfo,
                                      obscureNumber: true,
                                      obscureCvv: false,
                                      spacing: 10,
                                      textStyle: GoogleFonts.getFont(
                                        'Roboto',
                                        color: FlutterFlowTheme.white2,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      ),
                                      inputDecoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF9E9E9E),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF9E9E9E),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
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
                          onPressed: () async {
                            setState(() => _loadingButton = true);
                            try {
                              final transacAmount =
                                  profileAddPaymentMethodEventsRecord.price;
                              if (!(creditCardFormKey.currentState
                                      ?.validate() ??
                                  false)) {
                                return;
                              }
                              if (kIsWeb) {
                                showSnackbar(context,
                                    'Payments not yet supported on web.');
                                return;
                              }

                              final cardRequest = BraintreeCreditCardRequest(
                                cardNumber: creditCardInfo.cardNumber,
                                expirationMonth:
                                    creditCardInfo.expiryDate.split('/').first,
                                expirationYear:
                                    creditCardInfo.expiryDate.split('/').last,
                                cvv: creditCardInfo.cvvCode,
                              );
                              final cardResult =
                                  await Braintree.tokenizeCreditCard(
                                braintreeClientToken(),
                                cardRequest,
                              );
                              if (cardResult?.nonce == null) {
                                return;
                              }
                              showSnackbar(
                                context,
                                'Processing payment...',
                                duration: 10,
                                loading: true,
                              );
                              final paymentResponse =
                                  await processBraintreePayment(
                                transacAmount,
                                cardResult.nonce,
                              );
                              if (paymentResponse.errorMessage != null) {
                                showSnackbar(context,
                                    'Error: ${paymentResponse.errorMessage}');
                                return;
                              }
                              showSnackbar(context, 'Success!');
                              transactionId = paymentResponse.transactionId;

                              if ((transactionId) != ('')) {
                                Navigator.pop(context);
                              }

                              setState(() {});
                            } finally {
                              setState(() => _loadingButton = false);
                            }
                          },
                          text:
                              'Pay \$ ${profileAddPaymentMethodEventsRecord.price.toString()}',
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
    );
  }
}
