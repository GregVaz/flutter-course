## Introducción

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

## Extras

Fuchsia

Como idea par remplazo del SO Android
