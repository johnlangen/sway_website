import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isDropdownOpen = false;
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          _closeDropdown(); // Close the dropdown if switching to mobile view
          return _buildMobileNavBar(context);
        } else {
          return _buildDesktopNavBar(context);
        }
      },
    );
  }

  void _closeDropdown() {
    if (_isDropdownOpen) {
      _overlayEntry?.remove();
      _isDropdownOpen = false;
    }
  }

  Widget _buildMobileNavBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/'); // Navigate to the home page
            },
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Image.asset(
                'assets/swaylogo.png',
                width: 75, // Adjust the size as needed
                height: 25.53,
              ),
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.white),
            onSelected: (value) {
              switch (value) {
                case 'Treatments':
                  Navigator.pushNamed(context, '/treatments');
                  break;
                case 'Join the Club':
                  Navigator.pushNamed(context, '/join-the-club');
                  break;
                case 'The Sway Way':
                  Navigator.pushNamed(context, '/the-sway-way');
                  break;
                case 'Book Now':
                  Navigator.pushNamed(context, '/book-now');
                  break;
              }
            },
            offset: Offset(0, 50), // Position the dropdown below the menu icon
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'Treatments',
                child: Text('Treatments'),
              ),
              PopupMenuItem(
                value: 'Join the Club',
                child: Text('Join the Club'),
              ),
              PopupMenuItem(
                value: 'The Sway Way',
                child: Text('The Sway Way'),
              ),
              PopupMenuItem(
                value: 'Book Now',
                child: Text('Book Now'),
              ),
            ],
          ),
        ],
      ),
      color: Colors.transparent,
    );
  }

  Widget _buildDesktopNavBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70), // Adjusted padding to move everything right
      height: 50, // Increased height for a better appearance
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _closeDropdown(); // Close dropdown before navigating
                    Navigator.pushNamed(context, '/'); // Navigate to the home page
                  },
                  child: Image.asset(
                    'assets/swaylogo.png',
                    width: 75, // Adjust the size as needed
                    height: 25.53,
                  ),
                ),
                SizedBox(width: 30), // Adjusted spacing between the logo and the first item
                _buildTreatmentPopupMenu(context), // Updated to handle hover and click
                SizedBox(width: 30), // Adjusted to ensure even spacing between "Treatments" and "Join the Club"
                _buildNavItem(context, 'Join the Club', '/join-the-club'),
                SizedBox(width: 40),
                _buildNavItem(context, 'The Sway Way', '/the-sway-way'),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4A776D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                _closeDropdown(); // Close dropdown before navigating
                Navigator.pushNamed(context, '/book-now');
              },
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Color(0xFFF6F7F6),
                  fontSize: 18,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      color: Colors.transparent,
    );
  }

  Widget _buildNavItem(BuildContext context, String title, String route) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _closeDropdown(); // Close dropdown before navigating
          Navigator.pushNamed(context, route);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.transparent,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFF6F7F6),
              fontSize: 18,
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w400,
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTreatmentPopupMenu(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        _showDropdownMenu(context);
      },
      child: GestureDetector(
        onTap: () {
          _closeDropdown();
          Navigator.pushNamed(context, '/treatments'); // Navigate to the Treatments page
        },
        child: Row(
          children: [
            Text(
              'Treatments',
              style: TextStyle(
                color: Color(0xFFF6F7F6),
                fontSize: 18,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
      ),
    );
  }

  void _showDropdownMenu(BuildContext context) {
    if (_isDropdownOpen) return;

    final overlay = Overlay.of(context)!;
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: position.dx + 200, // Adjust this value to move the dropdown to the right
        top: position.dy + renderBox.size.height,
        child: MouseRegion(
          onEnter: (_) {
            _isDropdownOpen = true; // Keep the dropdown open when hovering over it
          },
          onExit: (_) {
            Future.delayed(const Duration(milliseconds: 100), () {
              if (_isDropdownOpen) _closeDropdown();
            });
          },
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(8.0), // Added padding for dropdown menu
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDropdownItem(context, 'Facials', '/facials'),
                  _buildDropdownItem(context, 'Massages', '/massages'),
                  _buildDropdownItem(context, 'Remedy Tech', '/remedy-tech'),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(_overlayEntry!);
    _isDropdownOpen = true;
  }

  Widget _buildDropdownItem(BuildContext context, String title, String route) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _closeDropdown();
          Navigator.pushNamed(context, route);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // Adjust padding to match original style
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFF6F7F6),
              fontSize: 16,
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
