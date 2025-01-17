import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/nav_bar.dart';
import '../widgets/footer.dart';
import '../widgets/footer_mobile.dart';

class JoinTheClubPage extends StatefulWidget {
  @override
  _JoinTheClubPageState createState() => _JoinTheClubPageState();
}

class _JoinTheClubPageState extends State<JoinTheClubPage> {
  int? _openedIndex;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 1000;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Section with Background Image, Text, and Button
            Stack(
              children: [
                // Background image
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/join1.png'), // Use join1.png as the background image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Navbar positioned slightly lower
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: NavBar(),
                ),
                // Text and Join Now button
                Positioned(
                  bottom: 50, // Position text and button near the bottom
                  left: isMobile ? 30 : 70, // Adjusted for mobile to move it more to the right
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Two-line text: "Experience the wellness you've been longing for"
                      Text(
                        'EXPERIENCE THE WELLNESS\nYOU\'VE BEEN LONGING FOR',
                        style: TextStyle(
                          color: Color(0xFFF6F7F6),
                          fontSize: isMobile 
                              ? MediaQuery.of(context).size.width * 0.07 // Shrinks with screen size on mobile
                              : 50, // Standard size on desktop
                          fontFamily: 'Vance',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 20),
                      // "Join Now" button with animation and link
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () async {
                            const url = 'https://clients.mindbodyonline.com/classic/ws?studioid=5739770&stype=40&prodId=100';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFF4A776D), // Green background color
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 4),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Text(
                              'Join Now',
                              style: TextStyle(
                                color: Color(0xFFF6F7F6), // White text color
                                fontSize: isMobile ? 16 : 18, // Adjust font size for mobile
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Second Section with Creamish Background, Text, and Image
            Container(
              color: Color(0xFFF7F4E9), // Creamish background color
              padding: EdgeInsets.symmetric(vertical: 150, horizontal: isMobile ? 20 : 80), // Adjusted padding for mobile
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Inclusive Club text above the image for mobile
                        Text(
                          'Inclusive club.\nExclusive Perks.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF113D33),
                            fontSize: isMobile 
                              ? MediaQuery.of(context).size.width * 0.06 // Shrinks with screen size on mobile
                              : 50, // Standard size on desktop
                            fontFamily: 'Vance',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 20),
                        // Image in the middle
                        Container(
                          width: 591,
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/join2.png'), // Replace with join2.png
                              fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Become a member text below the image for mobile
                        Text(
                          'Become a member today.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF113D33),
                            fontSize: isMobile 
                              ? MediaQuery.of(context).size.width * 0.06 // Shrinks with screen size on mobile
                              : 50, // Standard size on desktop
                            fontFamily: 'Vance',
                            fontWeight: FontWeight.w400,
                            height: 1.2, // Adjusted for better readability
                          ),
                        ),
                        SizedBox(height: 20),
                        // "Join Now" button with animation and link for mobile
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () async {
                              const url = 'https://clients.mindbodyonline.com/classic/ws?studioid=5739770&stype=40&prodId=100';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFF4A776D), // Green background color
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 4),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Text(
                                'Join Now',
                                style: TextStyle(
                                  color: Color(0xFFF6F7F6), // White text color
                                  fontSize: isMobile ? 16 : 18, // Adjust font size for mobile
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left text: "Inclusive club. Exclusive Perks."
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Inclusive club.\nExclusive Perks.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF113D33),
                              fontSize: 50,
                              fontFamily: 'Vance',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ),
                        // Middle image
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 591,
                            height: 675,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/join2.png'), // Replace with join2.png
                                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                              ),
                            ),
                          ),
                        ),
                        // Right text: "Become a member today."
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Become a member today.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF113D33),
                              fontSize: 50,
                              fontFamily: 'Vance',
                              fontWeight: FontWeight.w400,
                              height: 1.2, // Adjusted for better readability
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            // Third Section with Title and Drop-down Menus
            Container(
              color: Colors.white, // White background color
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: isMobile ? 20 : 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 781,
                    child: Text(
                      'Sway Club Membership Includes',
                      style: TextStyle(
                        color: Color(0xFF113D33),
                        fontSize: isMobile ? 35 : 50, // Adjusted for mobile
                        fontFamily: 'Vance-Text',
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(height: 50), // Increased space between title and dropdown menus

                  // Dropdowns
                  _buildDropdownMenu(0, 'Preferred Pricing', '''
                    Your price: \$99 (per treatment per month)\nTheir price: \$139 (per treatment)\nUnlimited treatments at \$99 each (excluding boosts)
                  '''),

                  _buildDropdownMenu(1, 'Access to Exclusive Member-Only Lounge', '''
                    A private mezzanine for you to relax.\nComplimentary tea and snacks that will make you feel healthy and revitalized.
                  '''),

                  _buildDropdownMenu(2, 'Bring your Bestie', '''
                    What’s better than a wellness day with your bestie?\nWhen you’re a member, you’ll be able to bring a friend for \$99/treatment. Limited to 1x a month.
                  '''),

                  _buildDropdownMenu(3, 'Family Share Account', '''
                    Your Fam = Our Fam.
                  '''),

                  _buildDropdownMenu(4, 'XX% off at The Sway Shop', '''
                    You can’t pass by the retail shop every visit, and not get a discount!
                  '''),

                  _buildDropdownMenu(5, 'Access to Member Only Events', '''
                    Come together with like-minded friends to create community.\nTogether we’ll inspire wellness.
                  '''),

                  _buildDropdownMenu(6, 'Benefits Roll Over!', '''
                    If you don’t use it, you don’t lose it. Lucky you :)
                  '''),

                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://clients.mindbodyonline.com/classic/ws?studioid=5739770&stype=40&prodId=100';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF4A776D), // Green background color
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Join Now',
                        style: TextStyle(
                          color: Color(0xFFF6F7F6), // White text color
                          fontSize: 18,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Footer
            isMobile ? FooterMobile() : Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownMenu(int index, String title, String content) {
    bool isOpen = _openedIndex == index;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Color(0xFF4A776D),
              fontSize: 20, // Smaller font size
              fontFamily: 'Vance-Text',
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Icon(
            isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Color(0xFF4A776D),
          ),
          onTap: () {
            setState(() {
              _openedIndex = isOpen ? null : index;
            });
          },
        ),
        if (isOpen)
          Padding(
            padding: EdgeInsets.only(left: 30, right: 10, top: 5, bottom: 5), // Adjusted padding to align with title
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(
                  color: Color(0xFF4A776D),
                  fontSize: 16,
                  fontFamily: 'Vance-Text',
                  height: 1.5, // Add height to make it easier to read
                ),
                children: content.trim().split('\n').map((line) {
                  return TextSpan(text: line.trim() + '\n');
                }).toList(),
              ),
              textAlign: TextAlign.left, // Align text to the left
            ),
          ),
        Container(
          height: 1,
          color: Color(0xFF4A776D),
          margin: EdgeInsets.symmetric(horizontal: 10), // Lines evenly spaced with margins
        ),
        SizedBox(height: 20), // Space between dropdowns
      ],
    );
  }
}
