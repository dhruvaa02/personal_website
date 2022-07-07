import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class ResumeView extends StatefulWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  _ResumeView createState() => _ResumeView();
}

class _ResumeView extends State<ResumeView> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.black,
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SfPdfViewer.network(
        'https://logo3d.s3.ca-central-1.amazonaws.com/resume.pdf',
        key: _pdfViewerKey,
        interactionMode: PdfInteractionMode.pan,
        initialZoomLevel: 1.5,
      ),
    );
  }
}
