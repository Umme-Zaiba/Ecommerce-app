import 'package:flutter/material.dart';

class DiscountBanner extends StatefulWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  _DiscountBannerState createState() => _DiscountBannerState();
}

class _DiscountBannerState extends State<DiscountBanner> {
  final PageController _pageController = PageController();
  final List<String> deals = [
    "A Summer Surprise",
    "Cashback upto INR 500",
    "Get Great deals and offers",
    // Add more deals as needed
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 90,
          child: PageView.builder(
            controller: _pageController,
            itemCount: deals.length,
            itemBuilder: (context, index) {
              return _buildDealCard(deals[index]);
            },
          ),
        ),
        _buildDotIndicators(),
      ],
    );
  }

  Widget _buildDealCard(String deal) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.yellow.shade200.withOpacity(0.7), Colors.orange.withOpacity(0.7)],
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Text.rich(
      TextSpan(
        text: deal,
        style: TextStyle(color: Colors.grey[900], fontSize: 20),
      ),
    ),
  );
}


  Widget _buildDotIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        deals.length,
        (index) => Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
