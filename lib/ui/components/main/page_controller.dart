import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/ui/components/main/reklam_container.dart';

class PageControllerContainer extends StatefulWidget {
  PageControllerContainer(this.isUpContainer);
  final bool isUpContainer;
  @override
  _PageControllerContainer createState() => _PageControllerContainer();
}

class _PageControllerContainer extends State<PageControllerContainer>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 339,
      child: PageView(
        controller: _pageController,
        children: <Widget>[
          Column(
            children: <Widget>[
              NotificationListener(
                onNotification: (overscroll) {
                  if (overscroll is OverscrollNotification &&
                      overscroll.overscroll != 0 &&
                      overscroll.dragDetails != null) {
                    _pageController.animateToPage(
                        overscroll.overscroll < 0 ? 0 : 2,
                        curve: Curves.ease,
                        duration: Duration(milliseconds: 250));
                  }
                  return true;
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16)),
                  height: 198,
                  width: 339,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      ReklamContainer(widget.isUpContainer),
                      ReklamContainer(widget.isUpContainer),
                      ReklamContainer(widget.isUpContainer),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TabPageSelector(
                controller: _tabController,
                color: Colors.transparent,
                selectedColor:
                    widget.isUpContainer ? Colors.white : TaskColors.main,
                indicatorSize: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
