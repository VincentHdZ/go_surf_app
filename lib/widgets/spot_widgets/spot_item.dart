import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../resources/size_config.dart';

import '../../screens/spot_screens/details_spot_screen.dart';

import '../../providers/spot_provider.dart';

class SpotItem extends StatefulWidget {
  final String id;
  final String name;
  final String imageUrl;
  final bool isFavorite;

  SpotItem(this.id, this.name, this.imageUrl, this.isFavorite);

  @override
  _SpotItemState createState() => _SpotItemState();
}

class _SpotItemState extends State<SpotItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailsSpotScreen.routeName, arguments: widget.id);
      },
      child: Card(
        margin: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
        elevation: 3,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Image.network(
                    widget.imageUrl,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    colorBlendMode: BlendMode.multiply,
                    height: 50 * SizeConfig.imageSizeMultiplier,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 3.5 * SizeConfig.textMultiplier,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            widget.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                            size: 10 * SizeConfig.imageSizeMultiplier,
                          ),
                          onPressed: () {
                            Provider.of<SpotProvider>(context, listen: false)
                                .changeFavoriteState(
                                    widget.id, widget.isFavorite);
                          })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
