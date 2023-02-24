import 'package:contactsafe/constants/maincolors_constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            getUserDashboard(),
            getContactsList(),
          ],
        ),
      ),
      floatingActionButton: const FloatAddContact(),
    );
  }

  SliverPadding getContactsList() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          mainAxisExtent: 55,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return const ContactCart();
          },
          childCount: 5,
        ),
      ),
    );
  }

  SliverPadding getUserDashboard() {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 24,
        right: 24,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Image.asset(
              'assets/icons/userdashboard.png',
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Mahdi',
              style: TextStyle(
                color: MainColors.mainBlue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FloatAddContact extends StatelessWidget {
  const FloatAddContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      backgroundColor: MainColors.mainBlue,
      child: Center(
        child: Image.asset('assets/icons/useradd.png'),
      ),
      onPressed: () {},
    );
  }
}

class ContactCart extends StatelessWidget {
  const ContactCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MainColors.mainBlue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.person,
            size: 30,
            color: MainColors.mainBlue,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 22,
              color: MainColors.mainBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Image.asset('assets/icons/edit.png'),
          const SizedBox(
            width: 10,
          ),
          Image.asset('assets/icons/trash.png'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
