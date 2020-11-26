import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_process/actions/auth/sign_in_with_apple.dart';
import 'package:the_process/actions/auth/sign_in_with_google.dart';
import 'package:the_process/enums/platform/platform_enum.dart';
import 'package:the_process/extensions/flutter_extensions.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/widgets/auth/auth_page_buttons/apple_sign_in_button.dart';
import 'package:the_process/widgets/auth/auth_page_buttons/google_sign_in_button.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: StoreConnector<AppState, PlatformEnum>(
            distinct: true,
            converter: (store) => store.state.settings.platform,
            builder: (context, platform) {
              return (platform == PlatformEnum.macOS)
                  ? AppleSignInButton(
                      style: AppleButtonStyle.black,
                      onPressed: () => context.dispatch(SignInWithApple()))
                  : GoogleSignInButton(
                      onPressed: () => context.dispatch(SignInWithGoogle()));
            }));
  }
}