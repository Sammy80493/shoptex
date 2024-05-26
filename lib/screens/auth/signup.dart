import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/screens/auth/login.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/widgets/elevated_icon_btn.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/shimmer_text.dart';
import 'package:shoptex/widgets/text_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';
import 'package:shoptex/widgets/textform_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //Controllers
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController pwd;
  late TextEditingController confirmPwd;
  //Focus nodes
  late FocusNode emailFocusNode;
  late FocusNode nameFocusNode;
  late FocusNode confirmPwdFocusNode;
  late FocusNode pwdFocusNode;
  bool obSecureTxt = false;
  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController();
    email = TextEditingController();
    pwd = TextEditingController();
    confirmPwd = TextEditingController();
    //
    emailFocusNode = FocusNode();
    pwdFocusNode = FocusNode();
    confirmPwdFocusNode = FocusNode();
    nameFocusNode = FocusNode();
    //
    confirmPwdFocusNode.unfocus();
    nameFocusNode.unfocus();
    emailFocusNode.unfocus();
    pwdFocusNode.unfocus();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    pwd.dispose();
    name.dispose();
    confirmPwd.dispose();

    //
    emailFocusNode.dispose();
    pwdFocusNode.dispose();
    nameFocusNode.dispose();
    confirmPwdFocusNode.dispose();
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
                const ShimmerText(txt: 'Welcome To HommyTech'),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  children: [
                    TextformWidget(
                      textInputAction: TextInputAction.next,
                      labelText: 'Full Name',
                      controller: name,
                      keyboardType: TextInputType.text,
                      focusNode: nameFocusNode,
                      prefixIcon: Bootstrap.person,
                      onFieldSubmitted: (p0) {
                        FocusScope.of(context).requestFocus(emailFocusNode);
                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                      textInputAction: TextInputAction.next,
                      labelText: 'Password',
                      controller: pwd,
                      focusNode: pwdFocusNode,
                      prefixIcon: BoxIcons.bx_dialpad,
                      onFieldSubmitted: (p0) {
                        // emailFocusNode.unfocus();
                        FocusScope.of(context)
                            .requestFocus(confirmPwdFocusNode);
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
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextformWidget(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      labelText: 'Confirm Password',
                      controller: pwd,
                      focusNode: confirmPwdFocusNode,
                      prefixIcon: BoxIcons.bx_dialpad,
                      onFieldSubmitted: (p0) {
                        confirmPwdFocusNode.unfocus();
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
                  height: height * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Elevated_icon_btn_widget(
                      btnTitle: 'Sign up',
                      iconData: Clarity.sign_in_line,
                      size: Size(width, height * 0.06),
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          txt: "If you have an account?",
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        TextBtnWidget(
                          txt: 'Login',
                          onTap: () {
                            AppConstants.push(
                                context: context, widget: const Login());
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
