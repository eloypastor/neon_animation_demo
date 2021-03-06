@HtmlImport('card_element.html')

library neon_animation_demo.lib.card_element;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:autonotify_observe/autonotify_observe.dart';
import 'package:polymer_elements/paper_card.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_from_left_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_right_animation.dart';


import 'package:polymer_elements/neon_animatable_behavior.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';


/**
 * A Polymer list-of-cards element.
 */
@PolymerRegister('card-element')
class CardElement extends PolymerElement with NeonAnimatableBehavior, AutonotifyBehavior, Observable
{

  @property String headerText;

  @property
  Map get animationConfig => {
      'entry': [
        {
          'name': 'slide-from-left-animation',
          'node': this
        },
        {
          'name': 'fade-in-animation',
          'node': this
        }
        ],
        'exit': [
        {
          'name': 'slide-right-animation',
          'node': this
        },
        {
          'name': 'fade-out-animation',
          'node': this
        }
        ]
  };


  /// Constructor used to create instance of ListOfCards.
  CardElement.created() : super.created();

}

