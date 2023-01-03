import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var IconColor = Colors.white;
var myBackgroundColor = LinearGradient(
    colors: [
      Colors.pink.shade200,
      Colors.pink.shade300],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter
);

var myDrawer = Drawer(
  backgroundColor: Colors.pink[200],
  child: Column(
    children: [
      DrawerHeader(child:  Text('Ecommerce Admin',
          style: GoogleFonts.satisfy(color: Colors.white,fontSize: 20,)),),
      ListTile(
        onTap: () {

        },
        leading: Icon(Icons.home, color: IconColor),
        title: const Text(
          'Dashboard',style: TextStyle(color: Colors.white),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.list_alt_rounded,
          color: IconColor,
        ),
        title: const Text('Report',style: TextStyle(color: Colors.white),),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.notifications, color: IconColor),
        title: const Text('Notification',style: TextStyle(color: Colors.white),),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.production_quantity_limits, color: IconColor),
        title: const Text('Products',style: TextStyle(color: Colors.white),),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.video_collection, color: IconColor),
        title: const Text('Banners',style: TextStyle(color: Colors.white),),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.security_rounded,
          color: IconColor,
        ),
        title: const Text('Users and Security setting',style: TextStyle(color: Colors.white),),
      ),
    ],
  ),
);
