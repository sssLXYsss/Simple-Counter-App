import 'package:flutter/material.dart';
import 'package:simple_counter_app/widgets/my_text.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        color: Colors.blueGrey,
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                MyText(
                  txt: 'About',
                  whatsFontWeight: FontWeight.bold,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterLogo(size: 70),
                ),
                MyText(
                  txt: 'MyApp',
                  size: 30,
                  whatsFontWeight: FontWeight.bold,
                ),
                MyText(txt: 'v1.2.3'),
                Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: MyText(txt: 'A simple counter app!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(txt: 'Developer:'),
                        MyText(txt: 'Email:'),
                        MyText(txt: 'Web:'),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(txt: 'My Company'),
                        MyText(txt: 'example@gmail.com'),
                        MyText(txt: 'www.myapp.com'),
                      ],
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                MyText(txt: '2025 MyCompany'),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(flex: 2, child: SizedBox()),
                      Expanded(
                        flex: 4,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[300],
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.black87),
                              MyText(txt: 'Rate App'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                        flex: 4,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[300],
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.message, color: Colors.black87),
                              MyText(txt: 'Contact'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
