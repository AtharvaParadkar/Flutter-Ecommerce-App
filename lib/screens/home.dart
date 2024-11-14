import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/signin.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:flutter_ecommerce_app/widgets/drawer.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();

  final searchController = TextEditingController();

  void signUserOut() {
    FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SignIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          style: IconButton.styleFrom(backgroundColor: secondaryColor),
          icon: const Icon(
            Icons.grid_view_rounded,
            color: Colors.white,
            size: 15,
          ),
        ),
        title: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Store Location',
                style: secondaryTextStyle(12, FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                    size: 14,
                  ),
                  Text(
                    'Mondolibug,Sylhet',
                    style: primaryTextStyle(14, FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: secondaryColor),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(
        color: primaryColor,
        child: Column(
          children: [
            const Gap(25),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search,
                      color: Color.fromARGB(255, 112, 123, 129)),
                  const Gap(10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Looking for shoes',
                        hintStyle: secondaryTextStyle(14, FontWeight.w400),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  sample('Sample 1'),
                  sample('Sample 2'),
                  sample('Sample 3'),
                  sample('Sample 4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? selectedSample;
  Widget sample(String shoesSample) {
    bool isSelected = selectedSample == shoesSample;

    return GestureDetector(
      onTap: () => setState(() {
        selectedSample = shoesSample;
      }),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.sizeOf(context).width / 4.5,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? buttonColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            shoesSample,
            style: primaryTextStyle(10, FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
