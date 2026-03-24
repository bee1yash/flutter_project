import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), 
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF2F2F2),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.deepOrange, size: 30), // Активна іконка
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey, size: 30),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.grey, size: 30),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, color: Colors.grey, size: 30),
            label: 'History',
          ),
        ],
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.shopping_cart_outlined, color: Colors.grey.shade400, size: 28),
                  ],
                ),
              ),
              
              const Padding(
                padding: EdgeInsets.only(left: 40.0, top: 20.0),
                child: Text(
                  'Delicious\nfood for you',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    fontFamily: 'SFPRO', 
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryTab('Foods', isActive: true),
                      const SizedBox(width: 30),
                      _buildCategoryTab('Drinks'),
                      const SizedBox(width: 30),
                      _buildCategoryTab('Snacks'),
                      const SizedBox(width: 30),
                      _buildCategoryTab('Sauces'),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'see more',
                    style: TextStyle(
                      color: Colors.deepOrange.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 10),
              
              SizedBox(
                height: 270, 
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 40.0),
                  children: [
                    _buildFoodCard(
                      'Veggie\ntomato mix',
                      '\$10',
                      'assets/images/food1.png',
                    ),
                    const SizedBox(width: 30),
                    _buildFoodCard(
                      'Spicy fish\nsauce',
                      '\$15',
                      'assets/images/food2.png', 
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryTab(String title, {bool isActive = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
            color: isActive ? Colors.deepOrange : Colors.grey.shade500,
          ),
        ),
        const SizedBox(height: 8),
        if (isActive)
          Container(
            height: 3,
            width: 40,
            color: Colors.deepOrange,
          ),
      ],
    );
  }

  Widget _buildFoodCard(String title, String price, String imagePath) {
    return SizedBox(
      width: 160,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(height: 30), 
              ],
            ),
          ),
          
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.fastfood, color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}