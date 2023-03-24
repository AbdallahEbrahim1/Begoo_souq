import 'package:animate_do/animate_do.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum BUTTONS_ALIGNMENT {
  CENTER,
  END,
}

class AppDialog extends StatelessWidget {
  final String? firstBtnTxt, secondBtnTxt, description, svgImagePath;
  final String title;
  final VoidCallback? onClickFirstBtn, onClickSecondBtn, onClickCloseBtn;
  final Widget? child;

  final BUTTONS_ALIGNMENT buttonsAlignment;
  final Color svgColor;
  final Color firstBtnColor;
  final Color secondBtnColor;
  final Color firstBtnTxtColor;
  final Color secondBtnTxtColor;
  final Color closeIconColor;

  const AppDialog({
    this.firstBtnTxt,
    this.secondBtnTxt,
    required this.title,
    this.description,
    this.svgImagePath,
    this.onClickFirstBtn,
    this.onClickSecondBtn,
    this.onClickCloseBtn,
    this.child,
    required this.buttonsAlignment,
    this.svgColor = Colors.orange,
    this.firstBtnColor = Colors.orange,
    this.secondBtnColor = Colors.black,
    this.firstBtnTxtColor = Colors.white,
    this.secondBtnTxtColor = Colors.white,
    this.closeIconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              padding: const EdgeInsets.only(
                bottom: 20,
                top: 40,
                left: 16,
                right: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(17),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    /// Title
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: svgImagePath != null ? 20 : 0,
                        right: 50,
                        left: 50,
                      ),
                      child: Text(
                        '$title',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),

                    if (child != null) child!,

                    /// SVG Image
                    if (child == null && svgImagePath != null)
                      SvgPicture.asset(
                        '$svgImagePath',
                        height: 55,
                        color: svgColor,
                      ),

                    /// Description
                    if (child == null && description != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24.0,
                          horizontal: 0,
                        ),
                        child: Text(
                          '$description',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                    /// Buttons
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment:
                            buttonsAlignment == BUTTONS_ALIGNMENT.CENTER
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.end,
                        children: [
                          /// First Button
                          if (firstBtnTxt != null)
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                primary: firstBtnColor,
                                shadowColor: firstBtnColor,
                                fixedSize: const Size.fromWidth(120),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: Text(
                                '$firstBtnTxt',
                                style: TextStyle(
                                  color: firstBtnTxtColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: onClickFirstBtn != null
                                  ? onClickFirstBtn
                                  : () {},
                            ),
                          if (firstBtnTxt != null)
                            const SizedBox(
                              width: 15,
                            ),

                          /// Second Button
                          if (secondBtnTxt != null)
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                primary: secondBtnColor,
                                shadowColor: secondBtnColor,
                                fixedSize: const Size.fromWidth(120),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: Text(
                                '$secondBtnTxt',
                                style: TextStyle(
                                  color: secondBtnTxtColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: onClickSecondBtn != null
                                  ? onClickSecondBtn
                                  : () {},
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 7,
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 20,
                color: closeIconColor,
              ),
              onPressed: onClickCloseBtn != null
                  ? onClickCloseBtn
                  : () {
                      Navigator.of(context).pop();
                    },
            ),
          ),
        ],
      ),
    );
  }
}


/// 1. Password Send Dialog
void passwordSendDialog(BuildContext context,
    {required VoidCallback onClickDoneBtn,
    VoidCallback? onClickCloseBtn,
    String? message}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.PASSWORD_SEND.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      onClickCloseBtn: onClickCloseBtn,
      description:
          message ?? LocaleKeys.PASSWORD_SENT_DESC.tr(),
      // svgImagePath: LocaleKeys.LIKE.tr(),
    ),
  );
}

/// 2. Password Changed Dialog
void passwordChangedDialog(BuildContext context,
    {required VoidCallback onClickDoneBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.PASSWORD_CHANGED,
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt:LocaleKeys.DONE,
      onClickSecondBtn: onClickDoneBtn,
      description:
      LocaleKeys.PASSWORD_CHANGED_DESC,
    ),
  );
}

/// 3. SignUp Confirmation Dialog
void signUpConfirmationDialog(BuildContext context,
    {required VoidCallback onClickDoneBtn, VoidCallback? onClickCloseBtn}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AppDialog(
      title: LocaleKeys.CONFIRMATION.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      onClickCloseBtn: onClickCloseBtn,
      description: LocaleKeys.CONFIRMATION_DESC.tr(),
      // svgImagePath: '${AppAssets.LIKE}',
    ),
  );
}

/// 3. Item added to cart Dialog
void itemAddedToCartDialog(BuildContext context,
    {required VoidCallback onClickCheckoutBtn,
    required VoidCallback onClickYesBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.ITEM_ADDED.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      firstBtnTxt: LocaleKeys.YES.tr(),
      onClickFirstBtn: onClickYesBtn,
      secondBtnTxt: LocaleKeys.CHECKOUT.tr(),
      onClickSecondBtn: onClickCheckoutBtn,
      description: LocaleKeys.ITEM_ADDED_DESC.tr(),
      // svgImagePath: '${AppAssets.BAG}',
    ),
  );
}

/// 4. Check Shipping Availability Dialog
/// TODO: Implement /// Check Shipping Availability Dialog

/// 5. Check Shipping Availability Success Dialog
void checkShippingAvailabilitySuccessDialog(BuildContext context,
    {required VoidCallback onClickDoneBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title:
          LocaleKeys.CHECK_SHIPPING_AVAILABILITY.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      description:
          LocaleKeys.CHECK_SHIPPING_AVAILABILITY_SUCCESS_DESC.tr(),
    ),
  );
}

/// 6. Remove Product from Cart? Dialog
void removeProductFromCartDialog(BuildContext context,
    {required VoidCallback onClickRemoveBtn,
    required VoidCallback onClickCancelBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.REMOVE_PRODUCT_FROM_CART.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      closeIconColor: Colors.orange,
      firstBtnTxt: LocaleKeys.CANCEL.tr(),
      firstBtnColor: Colors.transparent,
      firstBtnTxtColor: Colors.black,
      onClickFirstBtn: onClickCancelBtn,
      secondBtnTxt: LocaleKeys.REMOVE.tr(),
      onClickSecondBtn: onClickRemoveBtn,
      description:
          LocaleKeys.REMOVE_PRODUCT_FROM_CART_DESC.tr(),
    ),
  );
}

/// 7. Relate Product with Star? Dialog
void relateProductWithStarDialog(BuildContext context,
    {required VoidCallback onClickSelectBtn,
    required VoidCallback onClickCancelBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.RELATE_PRODUCT_WITH_STAR.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      closeIconColor: Colors.orange,
      firstBtnTxt: LocaleKeys.CANCEL.tr(),
      firstBtnColor: Colors.transparent,
      firstBtnTxtColor: Colors.black,
      onClickFirstBtn: onClickCancelBtn,
      secondBtnTxt: LocaleKeys.SELECT_KID.tr(),
      onClickSecondBtn: onClickSelectBtn,
      description:
          LocaleKeys.RELATE_PRODUCT_WITH_STAR_DESC.tr(),
    ),
  );
}

/// 8. Login First Dialog
void loginFirstDialog(BuildContext context,
    {required VoidCallback onClickLoginBtn,
    required VoidCallback onClickSignupBtn}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.LOGIN_FIRST.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      firstBtnTxt: LocaleKeys.SIGNUP.tr(),
      onClickFirstBtn: onClickSignupBtn,
      secondBtnTxt: LocaleKeys.LOGIN.tr(),
      onClickSecondBtn: onClickLoginBtn,
      description: LocaleKeys.LOGIN_FIRST_DESC.tr(),
    ),
  );
}

/// Remove Address Dialog
void removeAddressDialog(
  BuildContext context, {
  required VoidCallback onClickRemoveBtn,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.REMOVE_ADDRESS.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.REMOVE.tr(),
      onClickSecondBtn: onClickRemoveBtn,
      description: LocaleKeys.REMOVE_ADDRESS_DESC.tr(),
    ),
  );
}

/// Request Sent Dialog
void requestSentDialog(
  BuildContext context, {
  required VoidCallback onClickDoneBtn,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.REQUEST_SENT.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      description: LocaleKeys.REQUEST_SENT_DESC.tr(),
    ),
  );
}

/// Request Sent video Dialog
void VideoRequestSentDialog(
  BuildContext context, {
  required VoidCallback onClickDoneBtn,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.REQUEST_SENT.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.CENTER,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      description:
          LocaleKeys.VIDEO_REQUEST_SENT_DESC.tr(),
    ),
  );
}

/// Balance Added Dialog
void balanceAddedDialog(
  BuildContext context, {
  required VoidCallback onClickDoneBtn,
  required String balance,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.BALANCE_ADDED.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      // description:LocaleKeys.BALANCE_ADDED_DESC}')}$balance ${context.translate(LocaleKeys.BALANCE_ADDED_DESC1.tr(),
      description:LocaleKeys.BALANCE_ADDED_DESC.tr(),
      svgImagePath: 'AppAssets.LIKE',
    ),
  );
}

/// Error Dialog
void ErrorDialog(
  BuildContext context, {
  required VoidCallback onClickDoneBtn,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.Error_.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.Try_Again.tr(),
      onClickSecondBtn: onClickDoneBtn,
      description:
          LocaleKeys.Error_Processing_payment.tr(),
      svgImagePath: 'AppAssets.payment_error',
    ),
  );
}

/// Thanks Dialog
void thanksDialog(
  BuildContext context, {
  required VoidCallback onClickDoneBtn,
}) {
  showDialog(
    context: context,
    builder: (_) => AppDialog(
      title: LocaleKeys.THANKS.tr(),
      buttonsAlignment: BUTTONS_ALIGNMENT.END,
      secondBtnTxt: LocaleKeys.DONE.tr(),
      onClickSecondBtn: onClickDoneBtn,
      description: LocaleKeys.THANKS_DESC.tr(),
      svgImagePath:' AppAssets.LIKE',
    ),
  );
}


