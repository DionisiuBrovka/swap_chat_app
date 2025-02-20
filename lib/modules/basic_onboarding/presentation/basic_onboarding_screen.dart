import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:swap_chat_app/modules/main_page/presentation/main_page_screen.dart';

class BasicOnboardingScreen extends StatelessWidget {
  const BasicOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
              child: Onboarding(
                  animationInMilliseconds: 200,
                  startIndex: 0,
                  buildFooter: (context, netDragDistance, pagesLength,
                      currentIndex, setIndex, slideDirection) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimatedOpacity(
                              opacity: currentIndex != 0 ? 1 : 0,
                              duration: Durations.medium1,
                              child: FilledButton.tonal(
                                onPressed: currentIndex != 0
                                    ? () {
                                        setIndex(currentIndex - 1);
                                      }
                                    : null,
                                child: Text("Назад"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0, 0, pagesLength * 10, 0),
                              child: Indicator(
                                  painter: CirclePainter(
                                      activePainter: Paint()
                                        ..color = Colors.white,
                                      inactivePainter: Paint()
                                        ..color = Colors.black,
                                      space: 10,
                                      pagesLength: pagesLength,
                                      netDragPercent: netDragDistance,
                                      currentPageIndex: currentIndex,
                                      slideDirection: slideDirection)),
                            ),
                            FilledButton(
                              style: currentIndex != pagesLength - 1
                                  ? FilledButton.styleFrom(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      foregroundColor: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    )
                                  : FilledButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      foregroundColor: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              onPressed: currentIndex == pagesLength - 1
                                  ? () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainPageScreen(),
                                          ));
                                    }
                                  : () {
                                      setIndex(currentIndex + 1);
                                    },
                              child: Text(currentIndex == pagesLength - 1
                                  ? "Начать"
                                  : "Далее"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  swipeableBody: [
                OnboardingCard(
                  headerText: "Header 1",
                ),
                OnboardingCard(
                  headerText: "Header 2",
                ),
                OnboardingCard(
                  headerText: "Header 3",
                ),
                OnboardingCard(
                  headerText: "Header 4",
                ),
              ]))),
    );
  }
}

class OnboardingCard extends StatelessWidget {
  final String headerText;

  const OnboardingCard({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/01_pic.png",
                  height: 300,
                ),
              ),
            ),
            Card(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        headerText,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempor gravida neque ut convallis. Pellentesque tellus nulla")
                    ],
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
