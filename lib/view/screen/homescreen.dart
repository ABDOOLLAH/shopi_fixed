import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.shopping_basket_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
        notchMargin: 10,

        child: Row(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
