import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/screens/auth/signup.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/widgets/elevated_btn_widget.dart';
import 'package:shoptex/widgets/elevated_icon_btn.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/shimmer_text.dart';
import 'package:shoptex/widgets/text_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';
import 'package:shoptex/widgets/textform_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController email;
  late TextEditingController pwd;
  late FocusNode emailFocusNode;
  late FocusNode pwdFocusNode;
  bool obSecureTxt = false;
  @override
  void initState() {
    // TODO: implement initState
    email = TextEditingController();
    pwd = TextEditingController();
    emailFocusNode = FocusNode();
    pwdFocusNode = FocusNode();
    emailFocusNode.unfocus();
    pwdFocusNode.unfocus();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    pwd.dispose();
    emailFocusNode.dispose();
    pwdFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // TextWidget(
                //   txt: 'Welcome Back'.toUpperCase(),
                //   textStyle: Theme.of(context)
                //       .textTheme
                //       .titleMedium!
                //       .copyWith(fontSize: 23),
                // ),
                const ShimmerText(txt: 'Welcome Back'),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  children: [
                    TextformWidget(
                      textInputAction: TextInputAction.next,
                      labelText: 'Email',
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      focusNode: emailFocusNode,
                      prefixIcon: Clarity.email_line,
                      onFieldSubmitted: (p0) {
                        FocusScope.of(context).requestFocus(pwdFocusNode);
                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextformWidget(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      labelText: 'Password',
                      controller: pwd,
                      focusNode: pwdFocusNode,
                      prefixIcon: BoxIcons.bx_dialpad,
                      onFieldSubmitted: (p0) {
                        emailFocusNode.unfocus();
                      },
                      obscureText: obSecureTxt,
                      widget: IconBtnWidget(
                        iconData: obSecureTxt
                            ? Iconsax.eye_outline
                            : Iconsax.eye_slash_outline,
                        onPressed: () {
                          setState(() {
                            obSecureTxt = !obSecureTxt;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextBtnWidget(
                      color: Colors.blueAccent,
                      txt: 'Forget Password',
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Elevated_icon_btn_widget(
                      btnTitle: 'Login',
                      iconData: PixelArtIcons.login,
                      size: Size(width, height * 0.06),
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextWidget(
                      txt: 'or connect with'.toUpperCase(),
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Elevated_icon_btn_widget(
                          iconColor: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          btnTitle: 'Sign in with google',
                          iconData: EvaIcons.google,
                          color: Theme.of(context).colorScheme.primary,
                          onPressed: () {},
                          textStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                        ),
                        ElevatedBtnWidget(
                          btnTitle: 'Guest',
                          onPressed: () {},
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                          borderRadius: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          txt: "Don't have an account?",
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        TextBtnWidget(
                          txt: 'Sign up',
                          onTap: () {
                            AppConstants.push(
                                context: context, widget: const Signup());
                          },
                          color: Colors.blueAccent,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
