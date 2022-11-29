import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/screens/OrderStart.dart';
import 'package:practice/screens/StitchType.dart';
import 'package:practice/screens/StitchingDuration.dart';
import 'package:practice/screens/StitchingPrice.dart';
import 'package:practice/screens/StitchingSize.dart';
import 'package:practice/screens/StitchingTailer.dart';
import 'package:practice/screens/StitchingorderConfirm.dart';
import 'package:practice/widgets/OrderSttaus.dart';
import 'package:provider/provider.dart';

class StitichingOrderPage extends StatefulWidget {
  final stitchingModal = StitchingModal();

  StitichingOrderPage({super.key});

  @override
  State<StitichingOrderPage> createState() => _StitichingOrderPageState();
}

class _StitichingOrderPageState extends State<StitichingOrderPage> {
  var controller = PageController(initialPage: 6);
  var num = 3;

  nextPage() {
    //print(widget.stitchingModal.stitchingStatus);
    setState(() {
      num += 1;
    });
    if (num == 1) {
      Provider.of<StitchingModal>(context, listen: false).setStitchingStatus(1);
    } else if (num == 5) {
      Provider.of<StitchingModal>(context, listen: false).setStitchingStatus(2);
    }
    controller.animateToPage(num,
        duration: const Duration(microseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        toolbarHeight: 30,
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 80), child: OrderStatus()),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          OrderStart(
            nextPage: nextPage,
          ),
          StitchingType(
            onPressedFunction: nextPage,
          ),
          StitchingSize(
            onPressedFunction: nextPage,
          ),
          StitchingDuration(
            onPressedFunction: nextPage,
          ),
          StitchingPrice(
            onPressedFunction: nextPage,
          ),
          StitchingTailer(
            onPressedFunction: nextPage,
          ),
          const StitchingOrderConfirm(),
        ],
      ),
    );
  }
}
