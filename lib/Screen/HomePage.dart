import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Util/Drawer.dart';
import 'Dashboardscreen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.pink[200],
      //   title: Text('Ecommerce Admin',
      //       style: GoogleFonts.satisfy(color: Colors.white)),
      // ),
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.pink.shade200,
                //     Colors.pink.shade300,
                //   ],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
              ),
              child: const DashboardScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
