import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:utapes_app/themes.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.fromLTRB(12, 10, 20, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/shoes.png',
            width: 60,
          ),
        ),
        DView.spaceWidth(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terrex Urban Low',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '\$143,98',
                style: priceTextStyle,
              )
            ],
          ),
        ),
        Image.asset(
          'assets/wishlist_blue.png',
          width: 34,
        )
      ]),
    );
  }
}
