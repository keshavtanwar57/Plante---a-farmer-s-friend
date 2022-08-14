import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';
import 'constant.dart';
import 'package:dio/dio.dart';

// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightGreen.shade900,
      ),
      home: Welcome_Page(),
    );
  }
}
// int pingServer async ()
// {
//   try {
//     var dio = Dio();
//     dynamic response1 = await dio
//         .post('https://capstoneplant.herokuapp.com/predict_potato/', data: {"url": 'https://www.digitrac.in/pub/media/magefan_blog/Late_blight_of_potato.jpg'});
//     print(response1.data);
//   } catch (e) {
//     print(e);
//   }
//   return 1;
// }

class Welcome_Page extends StatefulWidget {
  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  // @override
  // void initState() async {
  //   print("i m in it");
  //   pingServer();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackground,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Hero(
                  tag: "logo1",
                  child: Text(
                    "Plante",
                    style: ktitle,
                  ),
                ),
                const Text("A Farmer's Friend"),
                LottieBuilder.network(
                    'https://assets1.lottiefiles.com/packages/lf20_jdf44z5r.json'),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'WELCOME\nFARMING MADE EASY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Container(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                      height: 70,
                      width: 70,
                      decoration: kcontainerDec),
                ),
              ],
            ),
          ),
        ));
  }
}
