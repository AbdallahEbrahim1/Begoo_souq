// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//
// class AppleSignInService {
//   final signInManager = locator<LoginManager>();
//   final _toast = locator<ToastTemplate>();
//   final _prefs = locator<PrefsService>();
//   // final options = const IOSOptions(accessibility: IOSAccessibility.first_unlock);
//   final keyChain = new FlutterSecureStorage();
//
//   Future<void> appleLogIn(BuildContext context) async {
//     //Check if Apple SignIn isn available for the device or not
//     // SignInWithApple.getKeychainCredential().then((value) => {
//     //   value.
//     // });
//     if (await SignInWithApple.isAvailable()) {
//       AuthorizationCredentialAppleID result;
//       await SignInWithApple.getAppleIDCredential(scopes: [
//         AppleIDAuthorizationScopes.email,
//         AppleIDAuthorizationScopes.fullName,
//       ]).then((value) async {
//         print("XXXXX is inside apple sign in then ?");
//         result = value;
//         print(result.email);
//         print(result.givenName);
//         // if (result.email != null && result.givenName != null) {
//         //
//         // }
//         const options =
//             IOSOptions(accessibility: KeychainAccessibility.first_unlock);
//
//         if (result.email != null && result.email!.isNotEmpty) {
//           await keyChain.write(
//               key: "email", value: result.email ?? "", iOptions: options);
//           await keyChain.write(
//               key: "name", value: result.givenName ?? "", iOptions: options);
//           await keyChain.write(
//               key: "userId",
//               value: result.userIdentifier ?? "",
//               iOptions: options);
//         }
//
//         print("email ${keyChain.read(key: "email")}");
//         print("userIdentifier ${keyChain.read(key: "userId")}");
//         // print(result.givenName);
//         // return value;
//         // print('email: ${result.email??""} \n name: ${result.givenName??""}');
//         // Read all values
//
//         await signInManager.socialLogin(
//           request: SocialLoginRequest(
//             email: result.email ??
//                 await keyChain.read(key: "email") ??
//                 await keyChain.read(key: "userId") ??
//                 '',
//             name: result.givenName ?? await keyChain.read(key: "name"),
//           ),
//         );
//       }).onError((error, stackTrace) {
//         print("XXXXX sign in with apple custom error ==> $error");
//         _toast.show(_prefs.appLanguage == "en"
//             ? "something went wrong , try again later"
//             : "حدث خطآ ما ، برجاء المحاولة لاحقا");
//       });
//     } else {
//       print('Apple SignIn is not available for your device');
//       _toast.show(_prefs.appLanguage == "en"
//           ? 'Apple SignIn is not available for your device'
//           : "تسجيل الدخول بواسطة ابل غير متاح لجهازك");
//     }
//   }
// }
