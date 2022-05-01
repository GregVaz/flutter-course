# Tipos de Widgets

## Widgets con estado - StatefulWidget

* Seran aquellos que hereden de StatelessWidget
* Seran aquellos que el usuario interactua directamennte en la interfaz
* Checkbox, Radio, Slider, Form

## Wdigets sin estado - StatelessWidget

* Seran aquellos que hereden de StatelessWidget y estos no interactuan con el usuario
* Icono, Text, Contenedor con color

El Widget principal del que todos heredan es `Widget`

Se desprende despues en
* StatelessWidget
  * ..
* StatefulWdget
  * ..

## Widget description -> [StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)

Widgets are the basic building blocks of a flutter app.
Each one is a mutable declaration of part of user interface,  and they can do a lot of things.
There are structure elements like a button or a menu
There are stylistic elements that propagate a font or color skin
And layout-related widgets like padding, and much more.

> A StatelessWidget is a widget that's compose of children which is why it has a build method
> And it does not have any mutable state that it needs to track.

When we say mutable state, it means any properties that wil change over time, like a text box would have a string that the user updates, for example, or a widget that's animated might have values that change. 

This one does not have any of that. it just needs a string for a name which wont change, so a stateless widget it's perfect. 

