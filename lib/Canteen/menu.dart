import 'package:bit_d/Canteen/Info.dart';
import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 60.0),
              Container(
                width: 90,
                height: 50,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: Text('Canteen Menu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: 'Biryani'),
                              Tab(text: 'Soft Drinks'),
                              Tab(text: 'Burgers'),
                              Tab(text: 'South'),
                            ],
                          ),
                        ),
                        Container(
                            height: 400, //height of TabBarView
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              _listView(context),
                              _listView2(context),
                              _listView3(context),
                              _listView(context),
                            ]))
                      ])),
            ]),
      ),
    );
  }
}

ListView _listView(BuildContext context) {
  return ListView.builder(
      itemCount: StringResource.items.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${StringResource.items[index]}',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text(
              'Price : ${StringResource.price[index]}',
              style: TextStyle(color: Colors.blue[450]),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Info(StringResource.items[index],
                            StringResource.price[index])));
              },
            ),
          ),
        );
      });
}

class StringResource {
  static const String app_name = "Food List";
  static const List<String> items = <String>[
    'Veg Biryani',
    'Chicken Biryani',
    'Mutton Biryani',
    'Hyderabad Special',
  ];

  static const List<int> price = <int>[13, 12, 10, 10, 15];
}

ListView _listView2(BuildContext context) {
  return ListView.builder(
      itemCount: Drinks.items.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${Drinks.items[index]}',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text(
              'Price : ${Drinks.price[index]}',
              style: TextStyle(color: Colors.blue[450]),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Info(Drinks.items[index], Drinks.price[index])));
              },
            ),
          ),
        );
      });
}

class Drinks {
  static const String app_name = "Food List";
  static const List<String> items = <String>[
    'Pepsi',
    'Coco cola',
    'Sprite',
    'Thumps Up',
  ];

  static const List<int> price = <int>[13, 12, 10, 10, 15];
}

ListView _listView3(BuildContext context) {
  return ListView.builder(
      itemCount: Burgers.items.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${Burgers.items[index]}',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text(
              'Price : ${Burgers.price[index]}',
              style: TextStyle(color: Colors.blue[450]),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Info(Burgers.items[index], Burgers.price[index])));
              },
            ),
          ),
        );
      });
}

class Burgers {
  static const String app_name = "Food List";
  static const List<String> items = <String>[
    'Cheese Burger',
    'Chicken Burger',
    'Plain Burger',
  ];

  static const List<int> price = <int>[13, 12, 10, 10, 15];
}
