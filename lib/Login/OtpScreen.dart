import 'package:flutter/material.dart';
import 'package:locawash/ProfilePage/profile_page.dart';

void OtpScreen() {
  runApp(const OtpScreeen());
}

class OtpScreeen extends StatelessWidget {
  const OtpScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
        children: <Widget> [
        Container(
        height: 300,
        width: double.infinity,
        color: Color(0xff141C43),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Text(
    'LOKAWASH', style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 40,
    letterSpacing: 1.5,
    color: Colors.white,
    ),
    ),
    Text('Best friend in cleanliness',
    style: TextStyle(
    color: Color(0xffdcd6d6),
    fontFamily: 'Montserrat',
    fontSize: 13,
    fontWeight: FontWeight.bold,
    height: 1.5,
    ),),
    ]
    ),
    ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(
                  width:1,
                  color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(8),
            ),

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.info,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Container(
                          child: Text('We have sent the OTP code to your email',  style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Montserrat'
                          ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),


          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(_fieldOne, true),
              OtpInput(_fieldTwo, false),
              OtpInput(_fieldThree, false),
              OtpInput(_fieldFour, false),
              OtpInput(_fieldFive, false),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Did not receive?',
                style: TextStyle(
                  color:Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreeen()),
                );
              },
                  child: Text('Resend OTP',
                    style: TextStyle(
                      color: Color(0xffF54168),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(vertical:10, horizontal: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>( Color(0xffF54168)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
                onPressed: () {
                  setState(() {
                    _otp = _fieldOne.text +
                        _fieldTwo.text +
                        _fieldThree.text +
                         _fieldFour.text +
                        _fieldFive.text;

                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProfilePage();
                    }));
                  });
                },
                child:  Text('Submit',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          // Display the entered OTP code
          Text(
            _otp ?? '',
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    ],
        ),
        ),
    );
  }
}

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        style: TextStyle(
          color: Color(0xffF54168),
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Color(0xffF54168),
        decoration: const InputDecoration(
            border: OutlineInputBorder(
            ),
            counterText: '',
            hintStyle: TextStyle(color: Color(0xffF54168), fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}