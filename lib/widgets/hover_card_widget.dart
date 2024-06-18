import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prapanch_j/controller/url_controller.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/widgets/hover_button.dart';

class HoverCardWidget extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String url;

  const HoverCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  State<HoverCardWidget> createState() => _HoverCardWidgetState();
}

class _HoverCardWidgetState extends State<HoverCardWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(1.1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _controller.forward(),
      onExit: (event) => _controller.reverse(),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SlideTransition(
              position: _animation,
              child: Container(
                decoration: BoxDecoration(
                    color: blackcolor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SlideContent(
                      title: widget.title,
                      description: widget.description,
                      url: widget.url,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextUtil extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final bool? weight;
  const TextUtil(
      {super.key, required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: size ?? 18,
        fontWeight: weight == null ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class SlideContent extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  const SlideContent({
    super.key,
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtil(
                text: title,
                weight: null,
              ),
              const SizedBox(
                height: 10,
              ),
              TextUtil(
                text: description,
                size: 12,
                weight: true,
              ),
            ],
          ),
        ),
        const Spacer(),
        HoverButton(
          text: "Discover More",
          onTap: () => UrlController().onLaunchUrl(url),
        ),
        const Spacer(),
      ],
    );
  }
}
