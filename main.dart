import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Gender(icon:Icons.male, text: "Male"),
                    Gender(icon: Icons.female, text: "Female")
                  ],),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                          Widget2(text1: 'HEIGHT',text2: 'WEIGHT',text3 : 'AGE'),
                    ],),
                  SizedBox(height: 50),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //FormedWidget(),
                      //NewWidget(),
                      ],
                    ),
          ],)
        ),
      ),
    );
      
  }
}


class Gender extends StatelessWidget {
  final IconData icon;
  final String text;
  const Gender({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.green, borderRadius: BorderRadius.circular(25)
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color:Colors.black, size:50),
          Text(
            text, style: TextStyle(color: Colors.white,fontSize: 25),
          )
        ],
      )
    );
  }
}

class Widget2 extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  double value;
  Widget2({super.key, required this.text1, required this.text2, required this.text3, this.value = 0});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
   int heightP = 90;
   int weight = 60;
   int age = 18;

  void increaseheight()
  {
    setState(() {
      heightP = heightP + 1;
    });
  }

  void  decreaseheight()
  {
    setState(() {

      heightP = heightP - 1;
    });
  }

  void increaseweight()
  {
    setState(() {
      weight = weight + 1;
    });
  }

  void  decreaseweight()
  {
    setState(() {

      weight = weight - 1;
    });
  }

  void increaseAge() {
    setState(() {
      age = age + 1;
    });
  }

  void decreaseAge() {
    setState(() {
      age = age - 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                    widget.text1,
                    style: TextStyle(color: Colors.white,fontSize: 30),
                ),
              SizedBox(width:40),
              Text(
                  '$heightP',
                    style: TextStyle(color: Colors.black,fontSize: 30),
                ),
              SizedBox(width: 40),
              GestureDetector(
                  onTap: (){
                    setState(() {
                        decreaseheight();
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height:30,
                    width:30,
                    decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Icon(Icons.remove,color: Colors.black),
                    )
                  ),
                  ),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        increaseheight();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height:30,
                      width:30,
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                            child: Icon(Icons.add,color: Colors.black),
                      )
                    )
                  )
                ],
                ),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                    widget.text2,
                    style: TextStyle(color: Colors.white,fontSize: 30),
                ),
              SizedBox(width:40),
              Text(
                  '$weight',
                    style: TextStyle(color: Colors.black,fontSize: 30),
                ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: (){
                  setState(() {
                      decreaseweight();
                  });
                },
                child: Container(
                   margin: EdgeInsets.all(10),
                   height:30,
                   width:30,
                   decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(15),
                   ),
                   child: Center(
                      child: Icon(Icons.remove,color: Colors.black),
                   )
                ),
                ),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      increaseweight();
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height:30,
                    width:30,
                    decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                          child: Icon(Icons.add,color: Colors.black),
                    )
                  )
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                    widget.text3,
                    style: TextStyle(color: Colors.white,fontSize: 30),
                ),
              SizedBox(width:40),
              Text(
                  '$age',
                    style: TextStyle(color: Colors.black,fontSize: 30),
                ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: (){
                  setState(() {
                      decreaseAge();
                  });
                },
                child: Container(
                   margin: EdgeInsets.all(10),
                   height:30,
                   width:30,
                   decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(15),
                   ),
                   child: Center(
                      child: Icon(Icons.remove,color: Colors.black),
                   )
                ),
                ),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      increaseAge();
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height:30,
                    width:30,
                    decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                          child: Icon(Icons.add,color: Colors.black),
                    )
                  )
                )
            ],
          ),

          SizedBox(height:20),
          FINAL(weightN: weight, heightN: heightP,ageN: age),
        ],
      )
    );
  }

}


class FINAL extends StatelessWidget {
  int heightN;
  int weightN;
  int ageN;
  FINAL({super.key, required this.weightN,required this.heightN,required this.ageN});

  @override
  Widget build(BuildContext context) {
    double result = (weightN/((heightN/100)*(heightN/100))).roundToDouble();
    String smry;
    return Container(
      height:320,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.black,borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment : MainAxisAlignment.center,
            children:[
              Text('Height is:' , style: TextStyle(color:Colors.white,fontSize: 35)),
              SizedBox(width:12),
              Text(heightN.toString(),style:TextStyle(color:Colors.white,fontSize: 38)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight is:' , style: TextStyle(color:Colors.white,fontSize: 35)),
              SizedBox(width:12),
              Text(weightN.toString(),style: TextStyle(color:Colors.white,fontSize: 38),),
            ],
          ),
          
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Age is:' , style: TextStyle(color:Colors.white,fontSize: 35)),
              SizedBox(width:12),
              Text(ageN.toString(),style:TextStyle(color:Colors.white, fontSize: 38)),
            ],
          ),
     
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI is:' , style: TextStyle(color:Colors.white,fontSize: 45)),
              SizedBox(width:4),
              Text(result.toString(),style: TextStyle(color:Colors.red,fontSize: 50),),
            ],
          ),
          (result < 16.0) ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                SizedBox(width:4),
                Text('Too lean', style: TextStyle(color:Colors.yellow,fontSize: 23)),
          ],) :(result >= 16.0 && result <= 17.0) ? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('Moderate Thinness', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ): (result >= 17.0 && result <= 18.5)? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('Mild Thinness', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ): (result >= 18.6 && result <=25.0) ? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('NORMAL', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ):(result >=25.1 && result <=30.0) ? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('Overweight', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ):(result >30.0 && result <=35.0) ? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('Obese class I', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ):(result >35.0 && result <=40.0) ? Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
                   SizedBox(width:4),
                   Text('Obese class II', style: TextStyle(color:Colors.yellow,fontSize: 18)),
               ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('SUMMARY is:' , style: TextStyle(color:Colors.white,fontSize: 20)),
              SizedBox(width:4),
              Text('Obese class III', style: TextStyle(color:Colors.yellow,fontSize: 18)),  
              ]
            ),
          ],
          )
        );
  }   
}
