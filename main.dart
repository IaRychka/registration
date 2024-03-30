import 'package:flutter/material.dart';

import 'array.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/register': (context) => const registr(),
        '/main_store': (context) => const store(),
      },
    ),
  );}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],

      body: Center(
        child: Column(
           children: <Widget>[
        Container(
             padding: const EdgeInsets.all(50.0),
             decoration: BoxDecoration(
               color:  Colors.blueGrey[200],

               border: Border.all(
                 width: 3,
               ),
               borderRadius: BorderRadius.circular(20),
             ),

             alignment: Alignment.center,
             margin: EdgeInsets.all(200),
           child:
            Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Entrance',
                style: TextStyle(fontSize: 26),),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(decoration:
                  InputDecoration( hintText:  ('Login'),
                ),
                  )
                ,),
             Container(
               margin: EdgeInsets.all(20),
               child: TextField(decoration:
         InputDecoration( hintText:  'Password'),),
             ),
             Container(
               padding: const EdgeInsets.all(10.0),
               decoration: BoxDecoration(
               color:  Colors.blueGrey[200],

               border: Border.all(
                 width: 1,
               ),
               borderRadius: BorderRadius.circular(20),
             ),
               child: MaterialButton(
               child: const Text(
                 "Login",
                 style: TextStyle(
                     fontStyle: FontStyle.normal,
                     fontSize: 24,
                     color: Colors.blueGrey),
               ),
               onPressed: () {
                 Navigator.pushNamed(context, '/main_store');
               },)
               ,),


              ],

           ),
             ), Container(


               child: Column(
               children: <Widget>[
                 Text("Dont have account?"),
                  MaterialButton(
                 child: const Text(
                   "Sind In",
                   style: TextStyle(
                       fontStyle: FontStyle.normal,
                       fontSize: 24,
                       color: Colors.blueGrey),
                 ),
                 onPressed: () {
                   Navigator.pushNamed(context, '/register');
                 },),]
             )
             ), ],

        ),
    ), ),);
  }
}


class registr extends StatelessWidget {

  const registr({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body:  Container(
        padding: const EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color:  Colors.blueGrey[200],

          border: Border.all(
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),

        alignment: Alignment.center,
        margin: EdgeInsets.all(200),
        child: Column(
              children: <Widget>[
                Text('Registration',
                  style: TextStyle(fontSize: 26),),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(decoration:
                  InputDecoration( hintText:  'Nickname')),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(decoration:
                  InputDecoration( hintText:  'Login')),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(decoration:
                  InputDecoration( hintText:  'Password')),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color:  Colors.blueGrey[200],

                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                    child: const Text(
                      "Enter",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 24,
                          color: Colors.blueGrey),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },)
                  ,),

              ],
        ),
      ),
    );
  }
}




class store extends StatelessWidget {
  const store({super.key});


        @override
        Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey[700],
        //AppBar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(72, 255, 255, 255),
          title: const Column(children: [
            Text(
              "Flower Shop",
              style: TextStyle(fontSize: 24),
            ),
            //Text("What are we going to order today?", style: TextStyle(fontSize: 16), )
          ]),
        ),
        //ListVies
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: ListTile(
                // trailing: ,
                  leading: Container(
                    height: 220,
                    width: 100,
                    child: Image.network(
                      productList[index].imgPath,
                        fit: BoxFit.fitHeight
                    ),
                  ),
                  title: Text(
                    productList[index].name,
                    style: const TextStyle(
                        fontSize: 22, color: Colors.black),
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        productList[index].description,
                        overflow: TextOverflow.ellipsis,

                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            productList[index].price.toString(),
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.blueGrey,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "Рублей",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            );
          },
        ),
      );
    }
  }