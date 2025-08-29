import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  String _selected = "Home";
  Set<String> _selected2 = {"Music"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Ratndeep',
                selectionColor: Colors.green,
                // Text flow (LTR/RTL)
                textDirection: TextDirection.rtl,
                // Aligns text (left, right, center, justify)
                textAlign: TextAlign.center,
                // Whether text should wrap to the next line
                softWrap: true,
                // Advanced text layout (line height, spacing)
                // strutStyle: ,
                style: TextStyle(
                  backgroundColor: Colors.purple.shade200,
                  fontSize: 30,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8.0,
                  // Line height (multiplier of font size)
                  height: 2.0,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  // color: Colors.lightGreen,
                  fontSize: 40,
                  wordSpacing: 50,
                  // decoration: TextDecoration.overline,
                  decoration: TextDecoration.combine([
                    TextDecoration.overline,
                    TextDecoration.lineThrough,
                    TextDecoration.underline,
                  ]),
                  // decoration line color
                  decorationColor: Colors.amber,
                  // thickness of lines
                  decorationThickness: 1.5,
                  // style eof lines
                  decorationStyle: TextDecorationStyle.dashed,
                  shadows: [
                    Shadow(
                      offset: Offset(20, 20),
                      color: Colors.black,
                      blurRadius: 20,
                    ),
                  ],
                  foreground:
                      Paint()
                        ..color = Colors.blueGrey
                        // give stroke to text
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2.0,
                  // textBaseline: TextBaseline.ideographic,
                ),
              ),

              SelectableText('data'),

              /// Segmented Buttons single selection
              Center(
                child: SegmentedButton<String>(
                  segments: const <ButtonSegment<String>>[
                    ButtonSegment(value: "Home", icon: Icon(Icons.home), label: Text("Home")),
                    ButtonSegment(value: "Search", icon: Icon(Icons.search), label: Text("Search")),
                    ButtonSegment(value: "Profile", icon: Icon(Icons.person), label: Text("Profile")),
                  ],
                  selected: <String>{_selected},
                  onSelectionChanged: (newSelection) {
                    setState(() {
                      _selected = newSelection.first;
                    });
                  },
                ),
              ),

              /// Segmented Buttons multiple selection
              Center(
                child: SegmentedButton<String>(
                  multiSelectionEnabled: true,
                  segments: const [
                    ButtonSegment(value: "Music", icon: Icon(Icons.music_note), label: Text("Music")),
                    ButtonSegment(value: "Video", icon: Icon(Icons.movie), label: Text("Video")),
                    ButtonSegment(value: "Photo", icon: Icon(Icons.photo), label: Text("Photo")),
                  ],
                  selected: _selected2,
                  onSelectionChanged: (newSelection) {
                    setState(() {
                      _selected2 = newSelection;
                    });
                  },
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
