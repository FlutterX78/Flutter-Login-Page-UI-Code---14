import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'clippers.dart';
import 'input_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper1(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFFFB473), Color(0xFFFF42BA)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  ),
                ),
                ClipPath(
                  clipper: MyClipper2(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color(0xFFFFB473).withOpacity(0.5),
                          Color(0xFFFF42BA).withOpacity(0.5)
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  ),
                ),
                ClipPath(
                  clipper: MyClipper3(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color(0xFFFFB473).withOpacity(0.5),
                          Color(0xFFFF42BA).withOpacity(0.5)
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    width: size.width * 0.45,
                    height: size.height * 0.3,
                    child: Image(image: AssetImage('assets/icons/bitcoin.png')),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Hello",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 70,
                          letterSpacing: 2,
                          height: 1),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Sign in to your account",
                    style: GoogleFonts.doHyeon(
                        fontSize: 18, color: Colors.black26),
                  ),
                )
              ],
            ),
            FormInput(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width / 2,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.doHyeon(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Color(0xFFFFB473), Color(0xFFFF42BA)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                ),
              ),
            ),
            RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: GoogleFonts.doHyeon(color: Colors.black26),
                    children: <TextSpan>[
                  TextSpan(
                      text: "Create",
                      style: GoogleFonts.doHyeon(
                          color: Color(0xFFFF42BA),
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer())
                ]))
          ],
        ),
      ),
    );
  }
}
