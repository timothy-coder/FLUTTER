import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/shop/screens/sub_category/sub_category.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/images_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index) {
          return TVerticalImageText(
            image: TImages.firstcategory,
            title: 'Laboratorios',
            onTap: ()=>Get.to(()=>const SubCategoriasScreen()),
          );
        },
      ),
    );
  }
}
