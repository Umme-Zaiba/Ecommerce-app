import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity, // Set width to screen size
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(35),
              ),
              child: TextField(
                onChanged: (value){
                  // Perform search operation
                },
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}