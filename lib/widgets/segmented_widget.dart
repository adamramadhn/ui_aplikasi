import 'package:flutter/cupertino.dart';
import 'package:ui_aplikasi/constant/c.dart';

class SegmentedWidget extends StatefulWidget {
  const SegmentedWidget(
      {Key? key,
      required this.values,
      required this.initialPosition,
      required this.onSelected, required this.colorBack, required this.colorTextSelected})
      : super(key: key);
  final List<String> values;
  final int initialPosition;
  final Function(int index) onSelected;
  final Color colorTextSelected;
  final Color colorBack;
  @override
  State<SegmentedWidget> createState() => _SegmentedWidgetState();
}

class _SegmentedWidgetState extends State<SegmentedWidget> {
  late int current;

  @override
  void initState() {
    super.initState();
    current = widget.initialPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.values.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              setState(() => current = index);
              widget.onSelected(index);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color:
                    index == current ? widget.colorBack : C.color.textWhite,
              ),
              child: Center(
                child: Text(
                  widget.values[index],
                  style: TextStyle(
                      color: index == current
                          ? widget.colorTextSelected
                          : C.color.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );

    //   widget.isSelected
    //       ? Container(
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(30),
    //             color: C.color.primaryColor,
    //           ),
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 25),
    //             child: Center(
    //               child: TextAppWidget(
    //                   text: widget.text,
    //                   color: C.color.textWhite,
    //                   isWeight: true,
    //                   size: 12),
    //             ),
    //           ),
    //         )
    //       : Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 25),
    //           child: Center(
    //             child: TextAppWidget(
    //                 text: widget.text,
    //                 color: C.color.textWhite,
    //                 isWeight: true,
    //                 size: 12),
    //           ),
    //         ),
    // );
  }
}
