# Introducción

SDK de desarrollo de Google, pensado para el desarrollo nativo en diferentes dispositivos.

Creado con el objetivo de diseñar interfaces nativas para IOS y Android.

### Lanzamientos

- 2017 Version Alpha
- 2018 Version Beta
  - Diciembre 2018 FLutter 1.0

## Lenguaje de programación

- Dart

## Descripción

Dentro de los ttres estilos de desarrollo movil

- Native: Forma tradicional de desarrollar apps para generar aplicaciones nativas
  - Swift, Kotlin
- Hibrido: Forma de desarrollo a traves de archivos HTML, CSS, JS para empaquetarlos en un webview, sacrificando performance por esta comunicación
  - Ionic, Cordova, PhoneGap
- Cross Platform: Mantiene una estrategia idividual para la generación de la aplicación movil a través de las tecnologías que manejen
  - Xamarin, React Native, Native Script

Flutter podríamos colocarlo en Cross Platform al generar aplicaciones aproximadamente nativas, pero mantiene una ventaja sobre los demas frameworks dentro de la misma categoría al realizar un flujo mas simple y limpio al no compilar en bridge, dirigiendose directo al procesador.

Otros frameworks

> UI Model -> COmpare & Update <- | -> Native Control <-> Render <-> Canvas / Events

Flutter

> UI Model (Widgets) -> Render <- | -> Canvas / Events

## Modelo

Modelo de Widget a traves de su propio engine de renderizado Skia2D

| MyApp   |        |             |
| ------- | ------ | ----------- |
| Widgets | Render | Skia Canvas |

< - >

| Platform |        |
| -------- | ------ |
| Canvas   | Events |

### Diagrama de capas

Framwork (Dart)

- Material - Cupertido
- Widgets
- Rendering
- Animations - Painting - Gestures
- Foundation

Engine (C++)

- Skia - Dart - Text

#### Extras

Fuchsia

Como idea par remplazo del SO Android

# Dart

> Considerado como lenguaje del futuro, por su operabilidad.

[Documentación](https://dart.dev/)
[Playground](https://dartpad.dartlang.org/?)

- Dart puede ser usado en Flutter a traves de Flutter
- Dart puede usar usado en web a traves de Angular como AngularDart
- Dart puede ser utilizado para Aplicaciones de lado del servidor

Google declara que Dart esta inspirado en React, en la programación reactiva.

Dart utiliza el paradigma de programación orientada a objetos
Asi como todo es es un Widget, todo es un objeto ya que heredan de la clase Object.

```Dart
class HolaMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Todo: implemet build
    return null;
  }
}
```

Dart ofrece un [playground](https://dartpad.dartlang.org/?) para probar o realizar pruebas del lenguaje

## Sintaxis

> Todo es un objeto y todos heredan de la clase Object

### Variables

```Dart
// No es fuertemente tipado
var nombre = 'HolaMundo!';
```

```Dart
// Se usa la palabra clave dynamic cuando pensamos que el tipo de dao cambiaŕa en el futuro
dynamic nombre = 'HolaMundo';
```

```Dart
// Podemos especificar el tipo de dato
String nombre = 'Hola Mundo';

```

### Constantes

```Dart
// const debe tener asignado el valor en tiempo de compilación
// final debe tener asignado el valor ent iempo de ejecución
final nombre = 'Hola';
final String nickaname = 'Greg';

const nombre = 'Hola';
const String nickname = 'Greg';
```

### Tipos de variables

```Dart
// numbers, int, double
int x = 10;
double y = 10.54;

// strings: '' y "" son equivalentes
// podemos usar var para la declaracion
String palabra = 'word';
var palabra = 'word';

String palabraDoble  = "doble comilla";

String textoMultilinea = '''un texto
multilinea'''

// booleans: true o false
bool isDart = true;

// lists
var list = [11, 12, 13];

// maps
var dias = {
  // key: value
  'M': 'Monday',
  'T': 'Thursday',
  'W': 'Wednesday',
}

var meses = {
  1: "enero",
  2: "febrero",
  3: "marzo"
}
```

### Funciones

```Dart
// Las funciones pueden recibir entradas y generar salidas
void myFunction(param1, param2, param3) {...}

// La función main() Es el punto de entrada de una aplicacion
void main() {
  querySelector('#sample_text_id')
  ..text = ("Click me")
  ..onClick.listen(reverseText);
}
```

### Control de flujo

```Dart
if and else
for loops
while and do-while loops
break and continue
switch and case
assert
```

### Excepciones

```Dart
// Throw
throw FormatException('Expected at least 1 section');

// Catch
try{

} on OutOfBigBangException {

} on Exception catch (e) {

} catch(e) {

}
```

### Clases y Constructores

```Dart
class Point {
  num x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs
  Point(this.x, this.y);
}
```

## Herencia

```Dart
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  //..
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ..
}

// Sobreescritura de metodos

class SmartTelevision extends Television {
  @override
  void turnOn() { ... }
  // ...
}
```

### Enum

```Dart
enum Color { red, green, blue }
```

# Estilo de programación

> El estilo de programación que utiliza Flutter es declarativo
> También va de la mano con el paradigma de programación funcional

Fluter toma su principal inspiración de React Native (sobre componentes)

Programación imperativa vs declarativa

```dart
// Imperative style
b.setColor(red)
b.clearChildren()
ViewC c3 = new ViewC()
b.add(c3)
```

- Para agregar un color al ViewB se haría a traves de una propiedad, se le asigna, asi también si se le quiere anañir un componente dentro de, se utiliza la propiedad `child`

```dart
// Declarative style
return ViewB(
  color: red,
  child: ViewC(...),
)
```
