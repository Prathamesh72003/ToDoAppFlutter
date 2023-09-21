import 'package:flutter/material.dart';
import 'package:todoflutter/constants/colors.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
          searchBox(),
        ],),
      ),
    );
  }

  Widget searchBox(){
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(Icons.search,color: tdBlack, size: 20,),
                prefixIconConstraints: BoxConstraints(maxHeight: 20,minWidth: 25),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: tdGrey)
              ),
            ),
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.menu,color: tdBlack, size: 30),
        Container(height: 40, width: 40, child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('assets/images/avatar.jpeg')),)
      ]),
    );
  }
}