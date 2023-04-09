import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:studypods_ecommerce/main.dart';
import 'package:studypods_ecommerce/utils/primary_button.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            alignment: Alignment.centerLeft,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
              ),
              gradient: LinearGradient(
                colors: [Color(0xff34283E), Color(0xff845FA1)],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(22.0),
              child: Text(
                'Verification \nCode',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Please enter Code sent to",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "+91 $phoneNumber",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Pinput(
                onCompleted: (pin) => print(pin),
                showCursor: true,
                // defaultPinTheme: PinTheme(
                //   width: 56,
                //   height: 56,
                //   textStyle: TextStyle(
                //       fontSize: 20,
                //       color: Color.fromRGBO(30, 60, 87, 1),
                //       fontWeight: FontWeight.w600),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                // ),
              ),
            ),
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const MyShop();
                }),
              );
            },
            text: 'Login',
            fullWidth: true,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Resend Code',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
