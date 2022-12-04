import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:utapes_app/themes.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/shoes.png'),
                  ),
                ),
              ),
              DView.spaceWidth(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/btn_plus.png',
                    width: 16,
                  ),
                  DView.spaceHeight(2),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  DView.spaceHeight(2),
                  Image.asset(
                    'assets/btn_min.png',
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          DView.spaceHeight(12),
          Row(
            children: [
              Image.asset(
                'assets/delete.png',
                width: 10,
              ),
              DView.spaceWidth(4),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
