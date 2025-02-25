import 'package:flutter/material.dart';
import '../widgets/otp_form.dart'; // Import your OtpForm widget

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key, required this.controller});
  final PageController controller;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String? verifyCode; // Variable to store the OTP code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top image
          Padding(
            padding: const EdgeInsets.only(top: 13, right: 15),
            child: Image.asset(
              "assets/images/vector-3.png",
              width: 428,
              height: 457,
            ),
          ),
          const SizedBox(height: 18),

          // Main content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'Confirm the code\n',
                  style: TextStyle(
                    color: Color(0xFF755DC1),
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),

                // OTP input field
                Container(
                  width: 329,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color(0xFF9F7BFF)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: OtpForm(
                      callBack: (code) {
                        verifyCode = code; // Store the OTP code
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Confirm button
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: SizedBox(
                    width: 329,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add logic to verify the OTP code
                        if (verifyCode != null && verifyCode!.length == 6) {
                          // Example: Verify the OTP
                          print("OTP entered: $verifyCode");
                        } else {
                          // Show an error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter a valid 6-digit code"),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9F7BFF),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Resend text
                const Center(
                  child: Text(
                    'Resend code',
                    style: TextStyle(
                      color: Color(0xFF755DC1),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 37),
              ],
            ),
          ),

          // Bottom text with navigation
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                // Navigate to the previous screen (e.g., SignUpScreen)
                widget.controller.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: const Text(
                'A 6-digit verification code has been sent to info@aidendesign.com',
                style: TextStyle(
                  color: Color(0xFF837E93),
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}