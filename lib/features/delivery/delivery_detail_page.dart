import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

class DeliveryDetailPage extends StatefulWidget {
  const DeliveryDetailPage({super.key});

  @override
  State<DeliveryDetailPage> createState() => _DeliveryDetailPageState();
}

class _DeliveryDetailPageState extends State<DeliveryDetailPage> {
  String deliveryMethod = '';
  bool isSelected = false;
  Color radioColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F8),
      appBar: AppBar(
        backgroundColor: const Color(0XFFF5F5F8),
        centerTitle: true,
        title: const Text('Delivery'),
      ),
      body: AppLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GapHere(2),
            Text(
              'Address Details',
              style: textTheme.titleMedium,
            ),
            const GapHere(2),
            const DecoratedBox(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amir Toukour'),
                    Divider(),
                    Text('Km 5 refinery road oppsite republic road, effurun, delta state'),
                    Divider(),
                    Text('+237 6931884964'),
                  ],
                ),
              ),
            ),
            const GapHere(4),
            Text(
              'Delivery Method',
              style: textTheme.titleMedium,
            ),
            const GapHere(2),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      value: 'Door delivery',
                      groupValue: deliveryMethod,
                      onChanged: (value) {
                        deliveryMethod = value.toString();
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(
                        deliveryMethod == 'Door delivery' ? Pallete.primary : Colors.grey,
                      ),
                      title: const Text('Door delivery'),
                    ),
                    const Divider(),
                    RadioListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      value: 'Pick Up',
                      groupValue: deliveryMethod,
                      fillColor: WidgetStatePropertyAll(
                        deliveryMethod == 'Pick Up' ? Pallete.primary : Colors.grey,
                      ),
                      onChanged: (value) {
                        deliveryMethod = value.toString();
                        setState(() {});
                      },
                      title: const Text('Pick Up'),
                    ),
                  ],
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
