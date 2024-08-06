import 'package:flutter/material.dart';

import '../pallete.dart';

class ItemQtyHandleBtn extends StatelessWidget {
  final VoidCallback? onQtyDecrease;
  final VoidCallback? onQtyIncrease;
  final String qty;
  const ItemQtyHandleBtn({
    super.key,
    this.onQtyDecrease,
    this.onQtyIncrease,
    this.qty = "1",
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       IconButton(
          style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(color: Pallete.boxBorderColor))),
          onPressed: onQtyDecrease,
          icon: const Icon(
            Icons.remove,
            color: Colors.grey,
          ),
        ),
        SizedBox(
            width: 25,
            child: Center(
              child: Text(
                qty,
                style: textTheme.titleMedium,
              ),
            )),
        IconButton(
          style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(color: Pallete.boxBorderColor))),
          padding: EdgeInsets.zero,
          onPressed: onQtyIncrease,
          icon: const Icon(
            Icons.add,
            color: Pallete.green,
          ),
        ),
      ],
    );
  }
}
