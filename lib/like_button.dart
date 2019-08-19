import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LikeButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ChangeNotifierProvider<LikeButton>(
      builder: (_) => LikeButton(),
      child: LikeButtonWidget(),
    );
  }
}

class LikeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final likeButton = Provider.of<LikeButton>(context);

    return IconButton(icon: likeButton.icon, onPressed: likeButton.tap);
  }
}

class LikeButton extends ChangeNotifier {
  bool _active = false;

  dynamic tap() {
    _active = !_active;

    notifyListeners();
  }

  Icon get icon => _active
      ? Icon(
          FontAwesomeIcons.solidHeart,
          color: Colors.redAccent,
        )
      : Icon(
          FontAwesomeIcons.heart,
          color: Colors.black,
        );
}
