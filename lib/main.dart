import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/* Q1. StatelessWidget,StatefulWidget difference?
 State<MyHomePage> -> state 로 선언된 것
*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

/* 연습1.
class MyHomePage extends StatelessWidget {
  final items = List.generate(100,(i)=>i).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('제목'),
      ),
      /*
      body: Column(
        children:<Widget>[
          Container(
            color: Colors.purple,
            width:100,
            height:100,
            padding: const EdgeInsets.all(8.0),
            margin:const EdgeInsets.all(8.0),
          ),
          Container(
            color: const Color(0xFFf5c535),
            width:100,
            height:100,
            padding: const EdgeInsets.all(8.0),
            margin:const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width:100,
            height:100,
            padding: const EdgeInsets.all(8.0),
            margin:const EdgeInsets.all(8.0),
          ),
        ],
      ),
      */
      /*
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
        Container(
        color: Colors.purple,
          width:100,
          height:100,
          padding: const EdgeInsets.all(8.0),
          margin:const EdgeInsets.all(8.0),
        ),
        Container(
          color: const Color(0xFFf5c535),
          width:100,
          height:100,
          padding: const EdgeInsets.all(8.0),
          margin:const EdgeInsets.all(8.0),
        ),
        Container(
          color: Colors.green,
          width:100,
          height:100,
          padding: const EdgeInsets.all(8.0),
          margin:const EdgeInsets.all(8.0),
        ),
      ],
      ),
      */
      /*
      body: Column(
        children:<Widget>[
          Stack(
            children:<Widget>[
              Container(
                color: Colors.purple,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: const Color(0xFFf5c535),
                width:80,
                height:80,
                padding:EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.green,
                width:60,
                height:60,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
            ],
          ),
          Stack(
            children:<Widget>[
              Container(
                color: Colors.orange,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.blue,
                width:80,
                height:80,
                padding:EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.red,
                width:60,
                height:60,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Container(
                color: Colors.purple,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: const Color(0xFFf5c535),
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Stack(
                children:<Widget>[
                  Container(
                    color: Colors.purple,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: const Color(0xFFf5c535),
                    width:80,
                    height:80,
                    padding:EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.green,
                    width:60,
                    height:60,
                    padding: const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.purple,
            width:100,
            height:100,
            padding: const EdgeInsets.all(8.0),
            margin:const EdgeInsets.all(8.0),
          ),
          Stack(
            children:<Widget>[
              Container(
                color: Colors.purple,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: const Color(0xFFf5c535),
                width:80,
                height:80,
                padding:EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.green,
                width:60,
                height:60,
                padding: const EdgeInsets.all(8.0),
                margin:const EdgeInsets.all(8.0),
              ),
            ],
          ),
        ],
      ),
      * */
      /*
      body: SingleChildScrollView(
        child:ListBody( // Listbody 대신 Scroll 사용하면 scroll 범위가 좁아짐. 사용자불편
          children: items.map((i) => Text('$i')).toList(),
        ),
      ),
      * */

      /*
      body:PageView(
        children:[
          Container(
            color:Colors.red,
          ),
          Container(
            color:Colors.orange,
          ),
          Container(
            color:Colors.blue,
          ),
        ],
      ),
       */
    );
  }
}
 */

// 연습2. 단순히 PageView 로만 하면
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child:Scaffold(
        appBar : AppBar(
          title: Text('Tab'),
          bottom: TabBar(
            tabs:<Widget>[
              Tab(icon:Icon(Icons.tag_faces)),
              Tab(text:'Menu2'),
              Tab(icon:Icon(Icons.info), text:'메뉴3'),
            ],
          ),
        ),
        body:TabBarView(
          children:<Widget>[
            Container(color:Colors.red),
            Container(color:Colors.orange),
            Container(color:Colors.green),
          ],
        ),

      ),
    );
  }
}
*/

// 연습3. BottomNaiagtationBar
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(

    appBar:AppBar(
    title:Text('BottomNavigationBar')
    ),
    bottomNavigationBar: BottomNavigationBar(items:[
      BottomNavigationBarItem(
        icon:Icon(Icons.home),
        label:'Home',
      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.person),
        label:'Profile',
      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.notifications),
        label:'notifications',
      ),
    ]),

    );
  }
}
*/

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
          title:Text('Ymi chapter4')
      ),

      //Center
      /*
     body: Center(
        child:Container(
          color:Colors.lightGreenAccent,
          width:100,
          height:100,
        ),
      ),
* */
      //Padding
      /*
            body:Padding(
        padding:const EdgeInsets.all(40.0),
        child:Container(
          color:Colors.lightGreenAccent,
        ),
      ),
      */
      //Align
      /*
        body:Align(
        alignment: Alignment.bottomRight,
        child:Container(
          color: Colors.lightBlue,
          width:100,
          height:100,
        ),
      ),
      * */
      //Expanded
      /*
      body:Column(
        children:<Widget>[
          Expanded(
            flex: 1,
            child : Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child : Container(
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            flex: 4,
            child : Container(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      */
      //SizedBox
      /*
      body: SizedBox(
        width:100,
        height:100,
        child:Container(
          color:Colors.indigo,
        ),
      ),
      */
      //Card
      /*
      body:Card(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(40.0),
        ),
        elevation:4,
        child:Container(
          width:200,
          height:200,
        ),
      ),
      */
      //Center+Card
      /*
      body: Center(
        child:Card(
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(40.0),
          ),
          elevation:4,
          child:Container(
            width:200,
            height:200,
          ),
        ),
      ),
      /

       */
      //button
      /*
      body:ElevatedButton(
        child:Text('Raised Button'),
        onPressed:(){
        }
      ),
      */
      //Text
      /*
      body:Text(
        'Hello World',
        style:TextStyle(
          fontSize:40.0,
          fontStyle:FontStyle.italic,
          fontWeight:FontWeight.bold,
          color:Colors.lightGreen,
          letterSpacing:4.0,
        ),
      ),
      */
      //Image_1
      /*
      body: Image.network('http://bit.ly/2Pvz4t8'),
      */
      //Image_2
      /*
      // pubspec.yaml 파일 수정.
      // asserts:, - assets/ 라는 폴더 추가함. 그래야 돌아가. 오준석 page155
      body:Image.asset('assets/sea_1.jpg'),
      */
      //Icon
      body:Icon(
        Icons.home,
        color:Colors.red,
        size:60.0,
      ),



    );
  }
}



