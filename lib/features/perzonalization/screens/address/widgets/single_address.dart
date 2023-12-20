import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress
  });

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
    );
  }
}
