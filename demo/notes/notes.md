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

First screen registration via main.dart via home param.  
Should contain Scaffold so that we can have other nice things like appBar.

## General Terms

Sliver: scrollable areas on the screen