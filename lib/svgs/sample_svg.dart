import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

const String diceSvg = '''
<svg width="100" height="100" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
  <!-- Dice outline -->
  <rect x="5" y="5" width="90" height="90" rx="15" ry="15" fill="black" />
  
  <!-- Dice pips -->
  <!-- Top-left -->
  <circle cx="25" cy="25" r="7" fill="white"/>
  <!-- Top-right -->
  <circle cx="75" cy="25" r="7" fill="white"/>
  <!-- Center -->
  <circle cx="50" cy="50" r="7" fill="white"/>
  <!-- Bottom-left -->
  <circle cx="25" cy="75" r="7" fill="white"/>
  <!-- Bottom-right -->
  <circle cx="75" cy="75" r="7" fill="white"/>
</svg>
''';

class GeneratedSVG extends StatelessWidget {
  const GeneratedSVG({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(diceSvg);
  }
}
