import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:growing/Model/model.dart';
import 'package:provider/provider.dart';

import 'image_svg.dart';

class PaddingContainer extends StatelessWidget {
  const PaddingContainer({super.key});
  @override
  Widget build(BuildContext context) {
    var appFile = context.watch<ApplicationFile>();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Wrap(
        children: List.generate(
            4,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.008,
                      horizontal: MediaQuery.of(context).size.width * 0.008),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.008,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xFFF4F378)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageSvg(asset: appFile.assetsProfile[index]),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              '4',
                              style: GoogleFonts.getFont(
                                'Bona Nova',
                                textStyle:
                                    TextStyle(height: 0.9, color: Colors.black),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                                wordSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'daily habits',
                              style: GoogleFonts.getFont(
                                'Bona Nova',
                                textStyle:
                                    TextStyle(height: 0.9, color: Colors.black),
                                fontSize: 15,
                                letterSpacing: 0.2,
                                wordSpacing: 0.3,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: 3,
                          top: 3,
                          child: Transform.rotate(
                              angle: 40, child: Icon(Icons.arrow_back)))
                    ],
                  ),
                )),
      ),
    );
  }
}
