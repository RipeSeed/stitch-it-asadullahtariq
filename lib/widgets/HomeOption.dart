import 'package:flutter/material.dart';

class HomeOption extends StatelessWidget {
  final String title;
  final String detail;
  final int count;
  final Color colorName;
  const HomeOption({
    super.key,
    required this.title,
    required this.detail,
    required this.count,
    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .41,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: colorName,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(19, 29, 23, 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: count != 0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                  child: Text(
                    count.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: 0.2),
                ),
              ),
              Text(
                detail,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
