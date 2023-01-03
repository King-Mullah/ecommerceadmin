import 'package:ecommerceadmin/Util/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeButton extends StatefulWidget {
  const ChangeButton({Key? key}) : super(key: key);

  @override
  State<ChangeButton> createState() => _ChangeButtonState();
}

class _ChangeButtonState extends State<ChangeButton> {
  @override
  Widget build(BuildContext context) {
    final ThemeProvider = Provider.of<themeProvider>(context, listen: false);
    return Switch.adaptive(
        value: ThemeProvider.isDarkMode,
        onChanged:(value){
          ThemeProvider.toggleSwitch(value);
        }
    );
  }
}
