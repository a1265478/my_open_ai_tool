import 'package:flutter/material.dart';
import 'package:my_chat_gpt/const/const.dart';
import '/modules/chat/views/chat_view.dart';
import '../../image_generations/views/image_generations_view.dart';
import '/utils/asset_manager.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(AssetManager.openaiLogo),
            ),
            title: const Text("Open AI Tool"),
            bottom: const TabBar(
              indicatorColor: kButtonColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: k18TextStyle,
              tabs: [
                Tab(text: "Chat"),
                Tab(text: "Image"),
              ],
            ),
          ),
          body: const SafeArea(
            child: TabBarView(
              children: [
                ChatView(),
                ImageGenerationsView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
