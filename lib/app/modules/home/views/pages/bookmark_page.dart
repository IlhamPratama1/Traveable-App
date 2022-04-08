// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller
import '../../controllers/home_controller.dart';

class BookmarkPage extends GetView<HomeController> {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Bookmark Page'));
  }
}
