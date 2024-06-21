import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renting_app/models/item_model.dart';
import 'package:renting_app/widgets/search_feild.dart';
import 'package:renting_app/widgets/select_category.dart';
import 'package:renting_app/widgets/suggestion_list.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.blue.shade600,
              ),
              Text(
                'Tokya, Japan',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchField(),
                  SelectCategory(),
                  SizedBox(height: 20),
                  SuggestionList('Recommendation for you', Item.recommendation),
                  SizedBox(height: 20),
                  SuggestionList('Nearby you', Item.nearby),
                ],
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue.shade600,
            unselectedItemColor: Colors.grey.shade600,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart), label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: 'Messages'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: 'Profile'),
            ]));
  }
}
