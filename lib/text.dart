import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  String _selected = "Home";
  Set<String> _selected2 = {"Music"};

  bool _isExpanded = false; // Track expanded/collapsed

  final String _text =
      'Flutter is an amazing framework for building beautiful, natively compiled applications '
      'for mobile, web, and desktop from a single codebase. It allows developers to write once and '
      'deploy everywhere, while maintaining high performance and flexibility. Flutter provides rich '
      'widgets and a modern reactive framework that makes UI development fast and enjoyable.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Ratndeep
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
              /// Good Morning
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

              /// Paragraph
              Text(
                _text,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                ),
                maxLines: _isExpanded ? 3 : 8, // show at least 3 lines
                overflow: TextOverflow.ellipsis,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _isExpanded ? 'See more' : 'See less',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        _isExpanded ? Icons.arrow_downward : Icons.arrow_upward,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ),
              ),

              /// Segmented Buttons single selection
              SegmentedButton<String>(
                segments: const <ButtonSegment<String>>[
                  ButtonSegment(
                    value: "Home",
                    icon: Icon(Icons.home),
                    label: Text("Home"),
                  ),
                  ButtonSegment(
                    value: "Search",
                    icon: Icon(Icons.search),
                    label: Text("Search"),
                  ),
                  ButtonSegment(
                    value: "Profile",
                    icon: Icon(Icons.person),
                    label: Text("Profile"),
                  ),
                ],
                selected: <String>{_selected},
                onSelectionChanged: (newSelection) {
                  setState(() {
                    _selected = newSelection.first;
                  });
                },
              ),

              /// Segmented Buttons multiple selection
              SegmentedButton<String>(
                multiSelectionEnabled: true,
                segments: const [
                  ButtonSegment(
                    value: "Music",
                    icon: Icon(Icons.music_note),
                    label: Text("Music"),
                  ),
                  ButtonSegment(
                    value: "Video",
                    icon: Icon(Icons.movie),
                    label: Text("Video"),
                  ),
                  ButtonSegment(
                    value: "Photo",
                    icon: Icon(Icons.photo),
                    label: Text("Photo"),
                  ),
                ],
                selected: _selected2,
                onSelectionChanged: (newSelection) {
                  setState(() {
                    _selected2 = newSelection;
                  });
                },
              ),

              /// Segmented Buttons theme selection
              SegmentedButton(
                segments: [
                  ButtonSegment(
                    value: "light",
                    icon: Icon(Icons.wb_sunny),
                    label: Text("Light"),
                  ),
                  ButtonSegment(
                    value: "dark",
                    icon: Icon(Icons.nightlight_round),
                    label: Text("Dark"),
                  ),
                  ButtonSegment(
                    value: "system",
                    icon: Icon(Icons.settings),
                    label: Text("System"),
                  ),
                ],
                selected: {"system"},
                onSelectionChanged: (val) {},
              ),

              /// Dropdown menu options
              DropdownMenu<String>(
                initialSelection: "Apple",
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: "Apple", label: "Apple"),
                  DropdownMenuEntry(value: "Banana", label: "Banana"),
                  DropdownMenuEntry(value: "Mango", label: "Mango"),
                ],
                onSelected: (val) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
