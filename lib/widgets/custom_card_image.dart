import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 30,
      child: Column(children: [
        const FadeInImage(
          image: NetworkImage(
              'https://imagenes.elpais.com/resizer/G5ETyNCBY33u7wWqt39nes3Tp_Q=/1960x1103/cloudfront-eu-central-1.images.arcpublishing.com/prisa/Z6WN33YVLRCTPCATP7EAJ2ODLE.jpg'),
          placeholder: AssetImage('assets/loading_image.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 350),
        ),
        Container(
          child: const Text('Rick & Morty'),
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          alignment: AlignmentDirectional.centerEnd,
        )
      ]),
    );
  }
}
