## Dart Syntax cheatsheet

https://www.ernegonzal.com/cheatsheet-dart-flutter/

- new instance: `Name()` or `new Name()`  
- public vs private: `Name()` vs `_Name()`  
- variable declaration:  
    strongly typed: `type name = value;`  
    any type: `dynamic name = value;`  
    inferred from usage: `var name = value;`  
    force param: prefix with `@required`  
- constructor:  (PascalCase)
    ```dart
    Name(type inputName) {
        // logic with input
    }
    // or
    Name(this.inputName);
    ```  
    - scope: `this` is for class scope, even within functions. Not like ES6!  
    - optional and named params: 
        ```dart
        Name( {type inputName = 'default value'} ) { // wrapped in {}
            // logic with input if provided, otherwise default value assigned
        }
        // or
        Name( {this.inputName = 'default value'} );
        ```
- functions:
    - anon: () {}
    - named: `returntype funcName() { }` (camelCase)
    - expression body: `setState(() => _counter++);`
    - block body:
        ```dart
        setState(() {
        return _counter++;
        });
        ```
    - Should you use shorthand? https://stackoverflow.com/questions/17002461/one-line-function-in-dart-using

## Navigation

First screen registration via main.dart via home or initialRoute param and should contain Scaffold. 

[Declarative vs Imperative](https://flutter.dev/docs/get-started/flutter-for/declarative)

Nav 1: imperative style, how to get to route, pop/push/pushNamed/onGenerateRoute  
Nav 2.0: declarative style, view configurations and let framework handle getting there

[Learning Flutter’s new navigation and routing system](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade)  
[How to use Flutter Navigator 2.0?](https://www.youtube.com/watch?v=wH16ROWAtAk)

## API calls

Fetching data uses Futures, async operation like observables.  
[Fetch data](https://flutter.dev/docs/cookbook/networking/fetch-data#testing)  
[State management options](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)  



## General Terms

Sliver: scrollable areas on the screen