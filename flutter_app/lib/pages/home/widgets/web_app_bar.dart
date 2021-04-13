import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Text("Flutter"),
          ),
          WebAppBarResponsiveContent(),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SizedBox(
              height: 38.0,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Fazer login",
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
