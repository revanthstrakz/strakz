import 'package:flutter/material.dart';
import 'package:templates/LandingpageforAgency.dart';
import 'package:templates/app_theme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() {
  runApp(LandingpageforAgency());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingpageforAgency(),
      },
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(
         'Home',
         style: TextStyle(
           fontSize: 22,
           color: AppTheme.darkText,
         ),),
       centerTitle: true,
       backgroundColor: AppTheme.nearlyWhite,

     ),
     body: Row(
       children: <Widget>[
         NavigationRail(
           selectedIndex: _selectedIndex,
           groupAlignment: 0,
           onDestinationSelected: (int index) {
             setState(() {
               _selectedIndex = index;
             });
           },
           labelType: NavigationRailLabelType.selected,
           destinations: [
             NavigationRailDestination(
               icon: Icon(Icons.home),
               selectedIcon: Icon(Icons.home),
               label: Text('Home'),
             ),
             NavigationRailDestination(
               icon: Icon(Icons.view_list),
               selectedIcon: Icon(Icons.book),
               label: Text('Lion'),
             ),
             NavigationRailDestination(
               icon: Icon(MdiIcons.panda),
               selectedIcon: Icon(MdiIcons.panda),
               label: Text('Panda'),
             ),
             NavigationRailDestination(
               icon: Icon(Icons.battery_alert),
               selectedIcon: Icon(Icons.battery_alert),
               label: Text('Hi'),
             ),
           ],
         ),
         VerticalDivider(thickness: 1, width: 1),
         // This is the main content.
         ],
     ),
   );
  
  }
}
