import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:provider/provider.dart';

class GenderButton extends StatelessWidget {
  final String path;
  final Function onPressedFunction;
  final String stitchingFor;
  final bool flag;
  const GenderButton({
    super.key,
    required this.path,
    required this.onPressedFunction,
    required this.stitchingFor, required this.flag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 196,
      child: OutlinedButton(
          // ignore: avoid_print
          onPressed: () {
            Provider.of<StitchingModal>(context, listen: false)
                .setStitichingFor(stitchingFor);
            onPressedFunction();
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    side: BorderSide(width: 1, color: flag?Colors.deepOrange[100]!: Colors.grey[300]!)),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(flag?Colors.deepOrange[100]!: Colors.white)),
          child: Image.asset(path)),
    );
  }
}
