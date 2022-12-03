import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:utapes_app/themes.dart';
import 'package:utapes_app/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget header() {
    //   return PreferredSize(
    //     preferredSize: Size.fromHeight(70),
    //     child: AppBar(
    //       automaticallyImplyLeading: false,
    //     ),
    //   );
    // }
    PreferredSizeWidget header() {
      return PreferredSize(
          child: AppBar(
            backgroundColor: bgColor1,
            centerTitle: false,
            title: Row(
              children: [
                Image.asset(
                  'assets/logo_shop_online.png',
                  width: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(70));
    }

    Widget productPreview() {
      return Container(
        padding: EdgeInsets.all(10),
        height: 74,
        width: 225,
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor5,
          border: Border.all(
            color: Color(0xff293B5F),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/shoes.png',
                width: 54,
              ),
            ),
            DView.spaceWidth(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISION 2.0',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  DView.spaceHeight(2),
                  Text(
                    '\$57.15',
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/close_btn.png',
              width: 22,
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: bgColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                DView.spaceWidth(10),
                Image.asset(
                  'assets/send_button.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, This item is still available?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text: 'Good night, This item is only available in size 42 and 43',
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
