import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:questionnaire/app/teori/bloc/teori_bloc.dart';
import 'package:questionnaire/config/colors.dart';

class TeoriScreen extends StatelessWidget {
  const TeoriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TeoriBloc>(context);
    bloc.add(TeoriEvent.started());
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: BlocBuilder<TeoriBloc, TeoriState>(
          builder: (context, state) {
            return state.maybeWhen(
                pdfLoaded: (path) => _buildPDFView(path),
                orElse: () => Text('Data Not Found'));
          },
        ),
      ),
    );
  }

  Stack _buildPDFView(String pathPDF) {
    final Completer<PDFViewController> _controller =
        Completer<PDFViewController>();
    return Stack(
      children: [
        Container(
          child: PDFView(
            filePath: pathPDF,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
            onRender: (_pages) {
              // setState(() {
              //   pages = _pages;
              //   isReady = true;
              // });
            },
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onPageChanged: (int? page, int? total) {
              print('page change: $page/$total');
            },
          ),
        ),
      ],
    );
  }
}
