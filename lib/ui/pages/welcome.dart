part of 'pages.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {

    Widget buttonTest1(String text){
      return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'Maaf, saya tidak bisa menyelesaikan ini',
                              textAlign: TextAlign.center,
                            ),
                            ));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: blackFontStyle1,
                          ),
                        ),
                      ),
                    );
    }

    Widget buttonTest2(String text){
      return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2_3()));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: blackFontStyle1,
                          ),
                        ),
                      ),
                    );
    }

    Widget buttonTest3(String text){
      return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'Maaf, saya tidak bisa menyelesaikan ini',
                              textAlign: TextAlign.center,
                            ),
                            ));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: blackFontStyle1,
                          ),
                        ),
                      ),
                    );
    }

    Widget buttonTest4(String text){
      return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'Maaf, saya tidak bisa menyelesaikan ini',
                              textAlign: TextAlign.center,
                            ),
                            ));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: blackFontStyle1,
                          ),
                        ),
                      ),
                    );
    }

    Widget buttonTest5(String text){
      return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'Maaf, saya tidak bisa menyelesaikan ini',
                              textAlign: TextAlign.center,
                            ),
                            ));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: blackFontStyle1,
                          ),
                        ),
                      ),
                    );
    }

    

    return Stack(
      children: [
        Container(color: secondaryColor,),
        SafeArea(child: Container(color: mainColor,)),
        Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    buttonTest1('Test 1'),
                    buttonTest2('Test 2'),
                    buttonTest3('Test 3'),
                    buttonTest4('Test 4'),
                    buttonTest5('Test 5'),
            ],
        ),
        )
      ],
    );
  }
}