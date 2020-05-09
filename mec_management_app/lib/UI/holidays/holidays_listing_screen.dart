import 'package:mec_management_app/UI/holidays.dart';
import 'package:mec_management_app/styleguide.dart';
import 'package:mec_management_app/Utilities/holidays_widget.dart';
import 'package:flutter/material.dart';

class HolidaysListingScreen extends StatefulWidget {
  @override
  _HolidaysListingScreenState createState() => _HolidaysListingScreenState();
}

class _HolidaysListingScreenState extends State<HolidaysListingScreen> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        viewportFraction: 1.0,
        initialPage: currentPage,
        keepPage: false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text:"\n\n" "Holidays List", style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "2020", style: AppTheme.display2),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[
                    for (var i = 0; i<characters.length;i++)
                      CharacterWidget(character: characters[i], pageController: _pageController, currentPage: i)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
