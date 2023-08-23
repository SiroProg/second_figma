import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? chekEmail;
  String? chekPassword;
  bool icon = false;
  bool chekBox = false;
  Color? color1 = Colors.black26;
  Color? color2 = Colors.black26;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: SizedBox(
              width: double.infinity,
              height: 140,
              child: Text(
                'Login to your\nAccount',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (a) {
                if (a.isEmpty) {
                  chekEmail = 'Error';
                  color2 = const Color.fromRGBO(188, 0, 99, 1);
                } else if (!a.contains(RegExp(r'\w+@gmail.com'))) {
                  chekEmail = 'Incorect email';
                  color2 = const Color.fromRGBO(188, 0, 99, 1);
                } else {
                  color2 = Colors.black26;
                  chekEmail = null;
                }
                setState(() {});
              },
              cursorRadius: const Radius.circular(10),
              cursorWidth: 3,
              cursorColor: const Color.fromARGB(255, 33, 85, 206),
              showCursor: true,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(217, 217, 217, 0.5),
                filled: true,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: color2!),
                ),
                errorText: chekEmail,
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email,
                  color: color2,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              onChanged: (a) {
                if (a.isEmpty) {
                  chekPassword = 'Error';
                } else if (!a.contains(RegExp(r'[A-Z]')) ||
                    !a.contains(RegExp(r'[a-z]')) ||
                    !a.contains(RegExp(r'[0-9]'))) {
                  color1 = const Color.fromRGBO(188, 0, 99, 1);
                  chekPassword = 'Incorect password';
                } else {
                  color1 = Colors.black26;
                  chekPassword = null;
                }
                setState(() {});
              },
              cursorRadius: const Radius.circular(10),
              cursorWidth: 3,
              cursorColor: const Color.fromARGB(255, 38, 105, 230),
              showCursor: true,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(217, 217, 217, 0.5),
                filled: true,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(188, 0, 99, 1)),
                ),
                errorText: chekPassword,
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: color1,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    icon = !icon;
                    setState(() {});
                  },
                  child: icon
                      ? Icon(
                          Icons.visibility,
                          color: color1,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: color1,
                        ),
                ),
              ),
              obscureText: icon,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(188, 0, 99, 1),
                  side: BorderSide(
                    color: Color.fromRGBO(188, 0, 99, 1),
                    width: 2,
                  ),
                  value: chekBox,
                  onChanged: (a) {
                    chekBox = !chekBox;
                    setState(() {});
                  },
                ),
                Text(
                  '  Remember me',
                  style: TextStyle(
                    color: Color.fromRGBO(188, 0, 99, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 53),
                backgroundColor: Color.fromRGBO(188, 0, 99, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Sing in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Forgot the password?',
              style: TextStyle(
                color: Color.fromRGBO(188, 0, 99, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '_________',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  TextSpan(
                    text: 'or continue with',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  TextSpan(
                    text: '_________',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black12, width: 1),
                    minimumSize: Size(82, 53),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Image(
                    image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png',
                    ),
                    width: 27,
                    height: 27,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black12, width: 1),
                    minimumSize: Size(82, 53),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Image(
                    image: NetworkImage(
                      'https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png',
                    ),
                    width: 27,
                    height: 27,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black12, width: 1),
                    minimumSize: Size(82, 53),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Image(
                    image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/152/152752.png',
                    ),
                    width: 27,
                    height: 27,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  TextSpan(
                    text: 'Sing up',
                    style: TextStyle(
                      color: Color.fromRGBO(188, 0, 99, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
