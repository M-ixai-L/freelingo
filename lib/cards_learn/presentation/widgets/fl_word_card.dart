import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelingo/core/models/fl_word.dart';
import 'package:freelingo/theme/colors.dart';

class FlWordCard extends StatefulWidget {
  final FlWord candidate;

  const FlWordCard({
    Key? key,
    required this.candidate,
    required this.isShowTranslate,
    required this.onTap,
  }) : super(key: key);

  final bool isShowTranslate;
  final VoidCallback onTap;

  @override
  State<FlWordCard> createState() => _FlWordCardState();
}

class _FlWordCardState extends State<FlWordCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: FlColors.primaryOrange,
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemGrey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            // Flexible(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       gradient: candidate.color,
            //       borderRadius: const BorderRadius.only(
            //         topLeft: Radius.circular(10),
            //         topRight: Radius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.candidate.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    if (widget.isShowTranslate) ...[
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.candidate.translations.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.candidate.description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    // Text(
                    //   candidate.city!,
                    //   style: const TextStyle(
                    //     color: Colors.grey,
                    //     fontSize: 15,
                    //   ),
                    // )
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
