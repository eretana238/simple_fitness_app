import 'package:flutter/cupertino.dart';

class Profile {
  String _name;
  AssetImage _image;

  Profile(this._name, this._image);

  String getName() {
    return this._name;
  }
  AssetImage getImage() {
    return this._image;
  }
}