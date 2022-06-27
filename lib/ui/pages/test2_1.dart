part of 'pages.dart';

class Test2_1 extends StatefulWidget {
  Test2_1({Key? key}) : super(key: key);

  @override
  State<Test2_1> createState() => _Test2_1State();
}

class _Test2_1State extends State<Test2_1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: mainColor,),
        SafeArea(child: Container(color: secondaryColor,)),
        Background(
          child: Container(
            
          ))
      ],
    );
  }
}