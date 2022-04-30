## Estructure de un proyecto de flutter

La primera linea que siempre tendremos en un proyecto de flutter sera

```dart
import 'package:flutter/material.dart';
```

Esta paqueteria que nos esta trayendo Material Design para poder implementar los Widgets con Material

---

La función `runApp` toma el widget y lo sirve

```dart
void main() => runApp(App())
```

El lambda esta utilizando el metodo `runApp()` para darle vida al Widget `MyApp()`

---

Flutter maneja programación reactiva para el tema de los Widgets y programación orientada a objetos para llamar al Widget

```dart
class App extends StatelessWidget {
	@override
	Wdiget build(BuildContext context) {
		return MaterialApp( // Cascaron de la aplicación
			title: 'My Flutter App', // titulo que se visualiza en el task manager o visualización externa de aplicación
			home: Home() // Clase/Objeto
		)
	}
}

class Home extends StatefulWidget {
	@override
	State<StatefulWidget> createState() {
		return _HomeState();
	}
}

class _HomeState extends State<Home> {
	@override
	@Widget build(BuildContext context) {
		return Scaffold ( // El scaffold representa la estructura de la aplicación
			appBar: AppBar{
				title: Text('My Flutter App')
			}
		)
	}
}
```

El scaffold podemos verlo como los distintos elementos posicionados en el lugar que le corresponde

Se compone de un

- Navbar
- Body (Centro de la aplicación)
- bottomNavigationBar
- floatinActionButton
- floatingActionButtonLocation
