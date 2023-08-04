import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(title: "Titulo 1", caption: "Caption 1", imageUrl: 'assets/1.png'),
  SlideInfo(title: "Titulo 2", caption: "Caption 2", imageUrl: 'assets/2.png'),
  SlideInfo(title: "Titulo 3", caption: "Caption 3", imageUrl: 'assets/3.png')
];

class AppTutotialScreen extends StatefulWidget {
  static const String name = "AppTutotialScreen";
  const AppTutotialScreen({super.key});

  @override
  State<AppTutotialScreen> createState() => _AppTutotialScreenState();
}

class _AppTutotialScreenState extends State<AppTutotialScreen> {
  final PageController pageviewController = PageController();
  bool finalPage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if (!finalPage && page >= (slides.length - 1.5)) {
        finalPage = true;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageviewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            children: [
              ...slides
                  .map((e) => _Slide(
                      title: e.title, caption: e.caption, imageUrl: e.imageUrl))
                  .toList()
            ],
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: Text("Exit"),
                onPressed: () => context.pop(),
              )),
          finalPage
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text("Comenzar"),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      ),
    );
  }
}
