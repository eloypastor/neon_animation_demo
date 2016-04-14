// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('main_app.html')
library neon_animation_demo.lib.main_app;		

import 'dart:html';

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import "package:autonotify_observe/autonotify_observe.dart";
import 'package:neon_animation_demo/card_element.dart';
import 'package:polymer_elements/paper_button.dart';
import 'package:polymer_elements/neon_animated_pages.dart';



@PolymerRegister('main-app')
class MainApp extends PolymerElement with AutonotifyBehavior, Observable{

  @observable @property int selected = 0;

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();

  @reflectable
  btnClick(event, [_]) {
    NeonAnimatedPages animatedPages = this.querySelector('neon-animated-pages');
    animatedPages.selectNext();
  }

}

