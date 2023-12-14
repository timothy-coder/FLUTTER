import 'package:flutter/cupertino.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';

import '';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight =EdgeInsets.only(
   top: TSizes.appBarHeigth,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}