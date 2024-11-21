import 'package:flutter/material.dart';
import 'package:modulwidget1/row_column.dart';
import 'package:modulwidget1/date_widget.dart';
import 'package:modulwidget1/dialog.dart';
import 'package:modulwidget1/input_selection.dart';
import 'package:modulwidget1/row_column.dart';

class scafoldwidget extends StatelessWidget {
  const scafoldwidget({super.key});
  
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Sample Code"),
       leading: IconButton(onPressed: () {}, 
       icon: const Icon(Icons.home), 
       ),
       actions: [
        const Text("Namaku"),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert)
        ),
       ],
       backgroundColor: Colors.red[700],
       foregroundColor: Colors.white,

      ),    
      body: const ColumnWidget(),
      //const Column(
       // children: [
        //  Center(
           // child: Text(
             // "You have press the button",
             // style: TextStyle(
               // fontSize: 20,
               // color: Colors.red,
               // fontWeight: FontWeight.bold,
             //),
            //),
          //),
        //  DialogWidget(),
        //  Input_selection(),
         // DateWidget(title: "Tanggal Widget",
         // ),
        //],
      //), 
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
              ),
              label: "Home"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Profil",
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user_sharp),
                label: "User",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.logout_outlined),
                label: "Logout",
            ),
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment value',
          child: const Icon(Icons.add),
        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
