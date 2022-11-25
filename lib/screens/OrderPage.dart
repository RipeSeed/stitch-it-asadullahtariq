import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/screens/OrderStart.dart';
import 'package:practice/screens/StitchType.dart';
import 'package:practice/screens/StitchingDuration.dart';
import 'package:practice/screens/StitchingPrice.dart';
import 'package:practice/screens/StitchingSize.dart';
import 'package:practice/screens/StitchingTailer.dart';
import 'package:practice/widgets/OrderSttaus.dart';
import 'package:provider/provider.dart';

class StitichingOrderPage extends StatefulWidget {
  final stitchingModal = StitchingModal();

  StitichingOrderPage({super.key});

  @override
  State<StitichingOrderPage> createState() => _StitichingOrderPageState();
}

class _StitichingOrderPageState extends State<StitichingOrderPage> {
  var controller = PageController(initialPage: 0);
  var num = 0;

  nextPage() {
    Provider.of<StitchingModal>(context, listen: false)
        .setStitchingStatus(num + 1);
    //print(widget.stitchingModal.stitchingStatus);
    setState(() {
      num += 1;
    });
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
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: OrderStatus()),
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
          const StitchingTailer()
        ],
      ),
    );
  }
}
