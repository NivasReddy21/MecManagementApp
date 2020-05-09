import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/faculty_members/faculty/bloc/listBloc.dart';

import 'ItemEffect.dart';

class ListViewEffect extends StatefulWidget {
  final Duration duration;
  final List<Widget> children;

  ListViewEffect({Key key, this.duration, this.children});
  _ListViewEffect createState() => new _ListViewEffect();
}

class _ListViewEffect extends State<ListViewEffect> {
  ListBloc _listBloc;

  initState() {
    _listBloc = new ListBloc();
    super.initState();
  }

  Widget build(BuildContext context) {
    _listBloc.startAnimation(widget.children.length, widget.duration);

    return new Scaffold(
      backgroundColor: Color(0xFF1b1e44),
        body: new Container(
            child: new Container(
                height: MediaQuery.of(context).size.height,
                child: new ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: widget.children.length,
                    itemBuilder: (context, position) {
                      return new ItemEffect(
                          child: widget.children[position],
                          duration: widget.duration,
                          position: position);
                    }))));
  }

  @override
  void dispose() {
    _listBloc.dispose();
    super.dispose();
  }
}
