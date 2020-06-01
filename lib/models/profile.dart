import 'package:flutter/cupertino.dart';

class Profile {
  String _name;
  AssetImage _image;

  Profile(this._name, this._image);

  String get name {
    return this._name;
  }
  AssetImage get image {
    return this._image;
  }
}