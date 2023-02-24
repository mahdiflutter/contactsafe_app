import 'package:contactsafe/constants/maincolors_constant.dart';
import 'package:contactsafe/ui/screens/home_screen.dart';
import 'package:contactsafe/ui/widgets/formtextbox_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hidePassword = false;
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [getHeader(), getForm()],
      )),
    );
  }

  SliverPadding getForm() {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 24,
        right: 24,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            FormTextBox(
              hintText: 'User Name',
              controller: usernameController,
              icon: Icons.person_pin_circle_outlined,
              hideCondition: true,
            ),
            FormTextBox(
              hintText: 'Password',
              controller: passwordController,
              icon: Icons.password_rounded,
              hideCondition: hidePassword,
            ),
            Row(
              children: [
                Checkbox(
                  value: hidePassword,
                  onChanged: (valu) {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                  activeColor: MainColors.mainBlue,
                ),
                const Text(
                  'Show Password',
                  style: TextStyle(
                    color: MainColors.mainGaryText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MainColors.mainBlue,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen(),)
                  );
                },
                child: const Text('Confirm'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Account is ofline now.All your information will be accessible only on this device.the online version of Contact Safe is coming soon.',
              style: TextStyle(
                height: 1.5,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: MainColors.mainGaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverPadding getHeader() {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 50,
      ),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Let’s Go! 🚀',
                style: TextStyle(
                  color: MainColors.mainBlue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select a User name and Password for your Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
