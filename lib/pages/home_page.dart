import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../widgets/nav_bar.dart';
import '../widgets/footer.dart';
import '../widgets/footer_mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hovered1 = false;
  bool _hovered2 = false;
  bool _hovered3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image only for the first section
          Container(
            height: MediaQuery.of(context).size.height, // Full screen height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.png'), // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content
          SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                // First section with background image and centered text
                Container(
                  height: MediaQuery.of(context).size.height, // Full screen height
                  child: Stack(
                    children: [
                      // NavBar at the top
                      Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        child: NavBar(),
                      ),
                      // Positioned text at the bottom left
                      Positioned(
                        bottom: 50, // Position it at the bottom
                        left: MediaQuery.of(context).size.width < 1000 ? 30 : 80, // 30 for mobile, 80 for desktop
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RESTORE YOUR BODY \n& REFRESH YOUR MIND.',
                              style: TextStyle(
                                color: Color(0xFFF6F7F6),
                                fontSize: MediaQuery.of(context).size.width < 500 
                                    ? MediaQuery.of(context).size.width * 0.06 > 20 ? MediaQuery.of(context).size.width * 0.06 : 20 // Minimum font size of 20
                                    : MediaQuery.of(context).size.width < 1000 
                                        ? 30 
                                        : 50, // Adjust font size for different screen widths
                                fontFamily: 'Vance',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Discover the future of spa',
                              style: TextStyle(
                                color: Color(0xFFF6F7F6),
                                fontSize: MediaQuery.of(context).size.width < 500 
                                    ? MediaQuery.of(context).size.width * 0.035 > 12 ? MediaQuery.of(context).size.width * 0.035 : 12 // Minimum font size of 12
                                    : MediaQuery.of(context).size.width < 1000 
                                        ? 14 
                                        : 20, // Adjust font size for different screen widths
                                fontFamily: 'Vance-Text',
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      )





                    ],
                  ),
                ),
                // Solid color background for the rest of the content
                Container(
                  color: Color(0xFFF6F4E8), // Consistent background color
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // "Ever feel like you need an escape..." section
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width < 1000 ? 30 : 0), // Add padding for smaller screens
                            width: 752.91,
                            child: Text(
                              'Ever feel like you need an escape from the hustle and bustle of the city? We get it. That\'s why we\'ve created a wellness club where you can hit pause, breathe, and rediscover yourself.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF113D33),
                                fontSize: 25,
                                fontFamily: 'Vance-Text',
                                height: 1.5, // Adjusted for better readability
                              ),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),


                      // "Forget about the world's noisy opinions..." section with Photos 1 and 2
                      Container(
                        color: Color(0xFFF6F4E8), // Consistent background color
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Mobile layout
                            MediaQuery.of(context).size.width < 1000
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // First photo (aligned left)
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 600 ? 20 : 0), // No padding on very small screens
                                          child: Container(
                                            width: MediaQuery.of(context).size.width > 600 ? 300 : MediaQuery.of(context).size.width * 0.8, // Fixed maximum width for mobile
                                            height: 200, // Consistent height for both images
                                            child: Image.asset(
                                              'assets/homepage_photo1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                       SizedBox(height: 40), // Adjust this value for the amount of space
                                      // Text in the middle
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 600 ? 20 : 0), // No padding on small screens
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.9, // Adjust width for mobile
                                          child: Text(
                                            'Forget about the world\'s noisy opinions. It’s time to start listening to what you need. It\'s time to tune into what your soul craves.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF113D33),
                                              fontSize: 20, // Adjust font size for mobile
                                              fontFamily: 'Vance-Text',
                                              height: 1.5,
                                            ),
                                            softWrap: true,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 40), // Space between text and second image
                                      // Second photo (aligned right)
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 600 ? 20 : 0), // No padding on very small screens
                                          child: Container(
                                            width: MediaQuery.of(context).size.width > 600 ? 300 : MediaQuery.of(context).size.width * 0.8, // Fixed maximum width for mobile
                                            height: 200, // Same height as the first image
                                            child: Image.asset(
                                              'assets/homepage_photo2.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Row( // Desktop layout (remains unchanged)
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          padding: EdgeInsets.only(bottom: 80),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(0), // No rounded corners
                                            child: Container(
                                              width: double.infinity,
                                              height: 400,
                                              child: Image.asset(
                                                'assets/homepage_photo1.png',
                                                fit: BoxFit.cover,
                                                alignment: Alignment.topLeft,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 40),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.25,
                                        child: Text(
                                          'Forget about the world\'s noisy opinions. It’s time to start listening to what you need. It\'s time to tune into what your soul craves.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF113D33),
                                            fontSize: 25,
                                            fontFamily: 'Vance-Text',
                                            height: 1.5,
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(width: 40),
                                      Flexible(
                                        child: Container(
                                          padding: EdgeInsets.only(top: 120),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(0), // No rounded corners
                                            child: FractionallySizedBox(
                                              widthFactor: 0.9,
                                              child: Image.asset(
                                                'assets/homepage_photo2.png',
                                                height: 400,
                                                fit: BoxFit.cover,
                                                alignment: Alignment.bottomRight,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),





                      









                      // "Wellness? It's that magic..." section
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 406,
                              child: Text(
                                'Wellness? It\'s that magic that happens when you genuinely feel good.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF113D33),
                                  fontSize: 25,
                                  fontFamily: 'Vance-Text',
                                  height: 1.5,
                                ),
                                softWrap: true,
                              ),
                            ),
                            SizedBox(height: 40),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/homepage_photo4.png',
                                width: MediaQuery.of(context).size.width < 1000
                                    ? MediaQuery.of(context).size.width * 0.4
                                    : MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width < 1000 ? 300 : 400, // Adjust the height conditionally
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),


                      // "We all deserve a space..." section with responsive text and image
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: MediaQuery.of(context).size.width < 1000
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      child: Text(
                                        'We all deserve a space where we can unwind, reflect, and just be.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF113D33),
                                          fontSize: 25,
                                          fontFamily: 'Vance-Text',
                                          height: 1.5,
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Add some space between text and image
                                  Flexible(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/homepage_photo15.png',
                                        width: MediaQuery.of(context).size.width * 0.5, // Adjust width for mobile
                                        height: MediaQuery.of(context).size.width < 1000 ? 500 : 400, // Adjust height
                                        fit: BoxFit.contain, // Ensure the whole image is visible
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Add some space between image and next text
                                  Flexible(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      child: Text(
                                        'Imagine a world where self-care means feeling at ease, and beauty is celebrated in its raw form.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF113D33),
                                          fontSize: 25,
                                          fontFamily: 'Vance-Text',
                                          height: 1.5,
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.25,
                                      child: Text(
                                        'We all deserve a space where we can unwind, reflect, and just be.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF113D33),
                                          fontSize: 25,
                                          fontFamily: 'Vance-Text',
                                          height: 1.5,
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Flexible(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/homepage_photo15.png',
                                        width: MediaQuery.of(context).size.width * 0.4,
                                        height: 400,
                                        fit: BoxFit.contain, // Ensure the whole image is visible
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Flexible(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.25,
                                      child: Text(
                                        'Imagine a world where self-care means feeling at ease, and beauty is celebrated in its raw form.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF113D33),
                                          fontSize: 25,
                                          fontFamily: 'Vance-Text',
                                          height: 1.5,
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),

                    

                      // "In our wellness club..." section
                      Container(
                      height: MediaQuery.of(context).size.height * 0.8, // Reduce height to move the section up
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width < 1000 ? 20 : 0), // Add padding for mobile
                            child: SizedBox(
                              width: 642.86,
                              child: Text(
                                'In our wellness club, self-care is not a luxury; it\'s a necessity. Let Sway be your happy place.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF113D33),
                                  fontSize: 25,
                                  fontFamily: 'Vance-Text',
                                  height: 1.5,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          ClipRRect(
                            borderRadius: BorderRadius.zero, // No rounded corners
                            child: Image.asset(
                              'assets/homepage_photo5.png',
                              width: MediaQuery.of(context).size.width < 1000 ? MediaQuery.of(context).size.width * 0.8 : 1000,
                              height: MediaQuery.of(context).size.width < 1000 ? 300 : 400,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),

                      
                      


                      // Cards with flip effect
                      const SizedBox(height: 30),
                      MediaQuery.of(context).size.width < 1000
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildFlipCard(
                                  'assets/homepage_photo6.png',
                                  'Massages',
                                  "It’s not only a massage, it’s relaxing into your deepest state and unwinding the mind.",
                                  _hovered1,
                                  () {
                                    setState(() {
                                      _hovered1 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered1 = false;
                                    });
                                  },
                                ),
                                const SizedBox(height: 30), // Add space between stacked cards
                                _buildFlipCard(
                                  'assets/homepage_photo7.png',
                                  'Facials',
                                  "It’s not just high tech facials, it’s feeling your inner beauty and glow.",
                                  _hovered2,
                                  () {
                                    setState(() {
                                      _hovered2 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered2 = false;
                                    });
                                  },
                                ),
                                const SizedBox(height: 30), // Add space between stacked cards
                                _buildFlipCard(
                                  'assets/homepage_photo8.png',
                                  'Cold Plunge',
                                  "It’s not just a cold plunge, it's experiencing exhilaration and mental clarity in the present moment.",
                                  _hovered3,
                                  () {
                                    setState(() {
                                      _hovered3 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered3 = false;
                                    });
                                  },
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildFlipCard(
                                  'assets/homepage_photo6.png',
                                  'Massages',
                                  "It’s not only a massage, it’s relaxing into your deepest state and unwinding the mind.",
                                  _hovered1,
                                  () {
                                    setState(() {
                                      _hovered1 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered1 = false;
                                    });
                                  },
                                ),
                                const SizedBox(width: 40),
                                _buildFlipCard(
                                  'assets/homepage_photo7.png',
                                  'Facials',
                                  "It’s not just high tech facials, it’s feeling your inner beauty and glow.",
                                  _hovered2,
                                  () {
                                    setState(() {
                                      _hovered2 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered2 = false;
                                    });
                                  },
                                ),
                                const SizedBox(width: 40),
                                _buildFlipCard(
                                  'assets/homepage_photo8.png',
                                  'Cold Plunge',
                                  "It’s not just a cold plunge, it's experiencing exhilaration and mental clarity in the present moment.",
                                  _hovered3,
                                  () {
                                    setState(() {
                                      _hovered3 = true;
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _hovered3 = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                      const SizedBox(height: 100),

                      // Experiences & Pricing Section

                      // Experiences & Pricing Section
                      FadeInUp(
                        globalKey: GlobalKey(),
                        delay: const Duration(milliseconds: 10),
                        duration: const Duration(milliseconds: 1000),
                        child: MediaQuery.of(context).size.width < 1000
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  Text(
                                    'EXPERIENCES & PRICING',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 30 : 40, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  // 50 Min Facial Section
                                  Text(
                                    '50 Min Facial',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 25 : 30, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Forever Young - Glow Getter - Pore Perfection - Sensitive Silk',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 12 : 15, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Member: \$99',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Member - Add a Boost: \$30',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Member - Add a Super Boost: \$60',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Drop-In: \$129',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Drop-In - Add a Boost: \$60',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Drop-In - Add a Super Boost: \$120',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 20),

                                  // 50 Min Massage Section
                                  Text(
                                    '50 Min Massage',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 25 : 30, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Deep Tissue - Swedish - Hot Stone',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 12 : 15, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Member: \$99',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Member - Add a Boost: \$30',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Member - Add a Super Boost: \$60',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Drop-In: \$129',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Drop-In - Add a Boost: \$60',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Text(
                                    'Drop-In - Add a Super Boost: \$120',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 20),

                                  // Remedy Room Section
                                  Text(
                                    'Remedy Room',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 25 : 30, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '50 minutes, 4 sessions per month',
                                    style: TextStyle(
                                      color: const Color(0xFF4A776D),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Member',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Infrared Sauna: \$99',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Cold Plunge: \$99',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Normatec Lymphatic Drainage Boots: \$99',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'LED Light Therapy: \$99',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Drop-In',
                                    style: TextStyle(
                                      color: const Color(0xFF113D33),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                      fontFamily: 'Vance-Text',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Infrared Sauna: \$139',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Cold Plunge: \$139',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Normatec Lymphatic Drainage Boots: \$139',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'LED Light Therapy: \$139',
                                          style: TextStyle(
                                            color: const Color(0xFF4A776D),
                                            fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 20, // Shrink font for mobile
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF113D33),
                                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width < 1000 ? 16 : 20, // Shrink font for mobile
                                        fontFamily: 'Vance-Text',
                                      ),
                                    ),
                                    child: const Text('Schedule Your Wellness Now'),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start, // Align items at the top
                                children: [
                                  Container(
                                    width: 400,
                                    height: 800,
                                    margin: const EdgeInsets.only(left: 0, right: 50), // Adjust margins for equal spacing on both sides
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/homepage_photo9.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 20),
                                      const Text(
                                        'EXPERIENCES & PRICING',
                                        style: TextStyle(
                                          color: Color(0xFF113D33),
                                          fontSize: 50, // Keep desktop font size
                                          fontFamily: 'Vance-Text',
                                        ),
                                      ),
                                      const SizedBox(height: 40),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              SizedBox(height: 40),
                                              Text(
                                                '50 Min Facial',
                                                style: TextStyle(
                                                  color: Color(0xFF113D33),
                                                  fontSize: 30, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Forever Young - Glow Getter - Pore Perfection - Sensitive Silk',
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 15, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Add a Boost',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Add a Super Boost',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Text(
                                                '50 Min Massage',
                                                style: TextStyle(
                                                  color: Color(0xFF113D33),
                                                  fontSize: 30, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Deep Tissue - Swedish - Hot Stone',
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 15, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Add a Boost',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Add a Super Boost',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Text(
                                                'Remedy Room',
                                                style: TextStyle(
                                                  color: Color(0xFF113D33),
                                                  fontSize: 30, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                '50 minutes, 4 sessions per month',
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Infrared Sauna',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Cold Plunge',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'Normatec Lymphatic Drainage Boots',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20), // Indent
                                                child: Text(
                                                  'LED Light Therapy',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A776D),
                                                    fontSize: 20, // Keep desktop font size
                                                    fontFamily: 'Vance-Text',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              SizedBox(height: 45), // Adjust this value to move the column down
                                              Text(
                                                'Member',
                                                style: TextStyle(
                                                  color: Color(0xFF113D33),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Adjust height to position "Member" title
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Boost'
                                              Text(
                                                '\$30',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Super Boost'
                                              Text(
                                                '\$60',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 60), // Align with '50 Min Massage'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Boost'
                                              Text(
                                                '\$30',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Super Boost'
                                              Text(
                                                '\$60',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 60), // Align with 'Remedy Room'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'Infrared Sauna'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 8), // Align with 'Cold Plunge'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'Normatec Lymphatic Drainage Boots'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'LED Light Therapy'
                                              Text(
                                                '\$99',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              SizedBox(height: 45), // Adjust this value to move the column down
                                              Text(
                                                'Drop-In',
                                                style: TextStyle(
                                                  color: Color(0xFF113D33),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Adjust height to position "Drop-In" title
                                              Text(
                                                '\$129',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Boost'
                                              Text(
                                                '\$60',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Super Boost'
                                              Text(
                                                '\$120',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 60), // Align with '50 Min Massage'
                                              Text(
                                                '\$129',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Boost'
                                              Text(
                                                '\$60',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 5), // Adjusted height for alignment with 'Add a Super Boost'
                                              Text(
                                                '\$120',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 60), // Align with 'Remedy Room'
                                              Text(
                                                '\$139',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 25, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'Infrared Sauna'
                                              Text(
                                                '\$139',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 8), // Align with 'Cold Plunge'
                                              Text(
                                                '\$139',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'Normatec Lymphatic Drainage Boots'
                                              Text(
                                                '\$139',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                              SizedBox(height: 10), // Align with 'LED Light Therapy'
                                              Text(
                                                '\$139',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF4A776D),
                                                  fontSize: 20, // Keep desktop font size
                                                  fontFamily: 'Vance-Text',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 40),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFF113D33),
                                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                          textStyle: const TextStyle(
                                            fontSize: 20, // Keep desktop font size
                                            fontFamily: 'Vance-Text',
                                          ),
                                        ),
                                        child: const Text('Schedule Your Wellness Now'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      ),





           
                      
                      const SizedBox(height: 100), // Final spacing at the bottom



                      // Banner Section
                      // Banner Section
                      Container(
                        width: MediaQuery.of(context).size.width, // Span across the page
                        height: MediaQuery.of(context).size.width < 1000 ? 300 : 336, // Increased height for mobile
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/homepage_photo10.png'), // Replace with your image asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0x00646464), Color(0xFF535353)],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width < 1000 ? 20 : MediaQuery.of(context).size.width * 0.05,
                            ),
                            child: Column(
                              crossAxisAlignment: MediaQuery.of(context).size.width < 1000 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width < 1000 ? double.infinity : 625, // Adjust width for mobile
                                  child: Text(
                                    'Join the wellness and start saving today',
                                    textAlign: MediaQuery.of(context).size.width < 1000 ? TextAlign.center : TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xFFF9ECB9),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 24 : 35, // Adjust font size for mobile
                                      fontFamily: 'Vance',
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width < 1000 ? 10 : 20), // Adjust space between texts
                                SizedBox(
                                  width: MediaQuery.of(context).size.width < 1000 ? double.infinity : 680, // Adjust width for mobile
                                  child: Text(
                                    'You deserve this time. Experience the ritual benefits of monthly treatments, half off boosts, and other exclusive member perks.',
                                    textAlign: MediaQuery.of(context).size.width < 1000 ? TextAlign.center : TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xFFF9ECB9),
                                      fontSize: MediaQuery.of(context).size.width < 1000 ? 18 : 25, // Adjust font size for mobile
                                      fontFamily: 'Vance',
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width < 1000 ? 20 : 40), // Adjust space before the "Become a Member" text
                                Text(
                                  'Become a Member',
                                  textAlign: MediaQuery.of(context).size.width < 1000 ? TextAlign.center : TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFFF9ECB9),
                                    fontSize: MediaQuery.of(context).size.width < 1000 ? 16 : 20, // Adjust font size for mobile
                                    fontFamily: 'Vance',
                                    decoration: TextDecoration.underline,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                     


                      // Section with four images and text below each
                      Container(
  padding: EdgeInsets.symmetric(vertical: 100), // Space from top and bottom
  color: Color(0xFFF6F4E8), // Background color to match the rest of the content
  child: Center(
    child: MediaQuery.of(context).size.width < 1000
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Row of Images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First Image with Text
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Align text centrally
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4, // 40% of the screen width
                          height: MediaQuery.of(context).size.width * 0.4, // Keep it square
                          child: Image.asset(
                            'assets/homepage_photo11.png', // Replace with actual image paths
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10), // Space between image and text
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4, // Shrink text with the image
                          child: Text(
                            'SWAY ON SPOTIFY',
                            textAlign: TextAlign.center, // Center align text
                            style: TextStyle(
                              color: Color(0xFF616161),
                              fontSize: 12, // Keep font size flexible if needed
                              fontFamily: 'Helvetica',
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20), // Space between images
                  // Second Image with Text
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          child: Image.asset(
                            'assets/homepage_photo12.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            'IN THE PRESS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF616161),
                              fontSize: 12,
                              fontFamily: 'Helvetica',
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30), // Space between rows
              // Second Row of Images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Third Image with Text
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          child: Image.asset(
                            'assets/homepage_photo13.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            '@SWAYWELLNESSCLUB',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF616161),
                              fontSize: 12,
                              fontFamily: 'Helvetica',
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  // Fourth Image with Text
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          child: Image.asset(
                            'assets/homepage_photo14.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            'ON THE APP',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF616161),
                              fontSize: 12,
                              fontFamily: 'Helvetica',
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Image with Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/homepage_photo11.png', // Replace with actual image paths
                    width: 192,
                    height: 192,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10), // Space between image and text
                  SizedBox(
                    width: 192,
                    child: Text(
                      'SWAY ON SPOTIFY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12,
                        fontFamily: 'Helvetica',
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 40), // Space between images
              // Second Image with Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/homepage_photo12.png', // Replace with actual image paths
                    width: 192,
                    height: 192,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10), // Space between image and text
                  SizedBox(
                    width: 192,
                    child: Text(
                      'IN THE PRESS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12,
                        fontFamily: 'Helvetica',
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 40), // Space between images
              // Third Image with Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/homepage_photo13.png', // Replace with actual image paths
                    width: 192,
                    height: 192,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10), // Space between image and text
                  SizedBox(
                    width: 192,
                    child: Text(
                      '@SWAYWELLNESSCLUB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12,
                        fontFamily: 'Helvetica',
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 40), // Space between images
              // Fourth Image with Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/homepage_photo14.png', // Replace with actual image paths
                    width: 192,
                    height: 192,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10), // Space between image and text
                  SizedBox(
                    width: 192,
                    child: Text(
                      'ON THE APP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12,
                        fontFamily: 'Helvetica',
                        height: 1.2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                        ),
                      ),








                      MediaQuery.of(context).size.width < 1000 ? FooterMobile() : Footer(),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
Widget _buildFlipCard(
  String imagePath,
  String frontText,
  String backText,
  bool hovered,
  VoidCallback onHoverEnter,
  VoidCallback onHoverExit,
) {
  double screenWidth = MediaQuery.of(context).size.width;
  bool isMobile = screenWidth < 800;

  return GestureDetector(
    onTap: () {
      if (isMobile) {
        setState(() {
          hovered = !hovered; // Flip the card when tapped on mobile
        });
      }
    },
    child: MouseRegion(
      onEnter: (_) {
        if (!isMobile) {
          onHoverEnter(); // Flip the card when hovered on desktop
        }
      },
      onExit: (_) {
        if (!isMobile) {
          onHoverExit(); // Flip the card back when hover exits on desktop
        }
      },
      child: Container(
        width: isMobile 
            ? screenWidth * 0.8  // On mobile, the card takes 80% of the width
            : screenWidth / 4.5,  // On desktop, reduce the card size slightly
        height: isMobile ? 400 : 450, // Adjust height accordingly
        margin: EdgeInsets.symmetric(horizontal: 10), // Add space between the cards
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          transform: Matrix4.rotationY(hovered ? 3.14159 : 0),
          transformAlignment: Alignment.center,
          child: Stack(
            children: [
              // Front side
              AnimatedOpacity(
                opacity: hovered ? 0 : 1,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Back side
              AnimatedOpacity(
                opacity: hovered ? 1 : 0,
                duration: const Duration(milliseconds: 300),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14159), // Prevent text inversion
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEBE7DF),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          backText,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF113D33),
                            fontSize: 25,
                            fontFamily: 'Vance-Text',
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}




  
}
