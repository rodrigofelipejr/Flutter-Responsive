import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: isDesktop ? 36.0 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 14.0, 14.0, 14.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18.0,
                  backgroundImage: Image.asset(
                    "assets/images/unsplash.jpg",
                  ).image,
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    "the_lion",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/unsplash.jpg",
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 4.0),
                IconButton(
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 4.0),
                IconButton(
                  icon: Icon(
                    Icons.share_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por the_lion e outras 345 pessoas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "HÁ 1 HORA",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (isDesktop) ...[
            Divider(
              color: Colors.white,
              height: 2.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0, 24.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: "Adicione um comentário...",
                        hintStyle: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Publicar"),
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22.0),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
