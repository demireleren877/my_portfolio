import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:my_portfolio/core/services/responsive.dart';

class ProjectImage extends StatefulWidget {
  const ProjectImage({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  final int index;

  @override
  State<ProjectImage> createState() => _ProjectImageState();
}

class _ProjectImageState extends State<ProjectImage> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          if (!Responsive.isMobile(context)) {
            onHover = true;
          }
        });
      },
      onExit: (event) {
        setState(() {
          onHover = false;
        });
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              widget.snapshot.data!.docs[0]["projects"][widget.index]["image"],
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: AnimatedOpacity(
                opacity: onHover ? 1 : 0,
                duration: Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black87,
                  height: context.height,
                  width: context.width,
                ),
              ),
            ),
            Visibility(
              visible: onHover,
              child: Padding(
                padding: context.padding.horizontalMedium,
                child: Text(
                  widget.snapshot.data!.docs[0]["projects"][widget.index]
                      ["info"],
                  style: context.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
