import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:utapes_app/themes.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/logo_shop.png',
                  width: 54,
                ),
                DView.spaceWidth(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Good night, This item is on...',
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                )
              ],
            ),
            DView.spaceHeight(12),
            Divider(
              thickness: 1,
              color: Color(0xff2b2939),
            ),
          ],
        ),
      ),
    );
  }
}
