import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormInput extends StatefulWidget {
  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputCard("Email", false),
        buildInputCard("password", true),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your Password?",
                    style: GoogleFonts.doHyeon(color: Colors.black26),
                  )),
            )
          ],
        ),
      ],
    );
  }

  Padding buildInputCard(String hint, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadowColor: Colors.black26,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: pass ? _isObscure : false,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: GoogleFonts.doHyeon(color: Colors.black26),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: pass
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.black26,
                        ))
                    : null),
            cursorColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
