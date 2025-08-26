import 'package:flutter/material.dart';
class RegisterCompleteScreen extends StatelessWidget {
  const RegisterCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF76B852),
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 40),
            // Title
            Text(
              "Register\nComplete !",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            // Subtitle
             Text(
              "You have successfully created \n your account.",
              style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40),

        // Centered Check Icon with ripple effect
        Center(
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
            ),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
                child:  Center(
                  child: Icon(Icons.check,
                      size: 50, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
            SizedBox(height: 40),




          ],
        ),
      )),
    );
  }
}
