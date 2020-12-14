# My learning Demo

This is a personal project aimed for private learning.

---
## Dart Syntax cheatsheet

https://www.ernegonzal.com/cheatsheet-dart-flutter/

##### new instance:
`Name()` or `new Name()`, the new is redundant.
##### public vs private:
`Name()` vs `_Name()`  
##### variable declaration:  
    strongly typed: `type name = value;`  
    any type: `dynamic name = value;`  
    inferred from usage: `var name = value;`  
    force param: prefix with `@required`  
##### constructor:  (PascalCase)
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
##### functions:
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

##### Generics
Best practice is to add your types to any calls that is a generic, for readability and show type clashes ASAP. e.g. 
```dart
T genericMethod<T, S>(T a, S b) {
    return a + b; 
} // would not work, could be incompatible object types

T genericMethod<T extends num, S extends num>(T a, S b) {
    return a + b; 
} // would work as nums can be added together. Be careful.
```

##### Enums
No types available. If you want enums like in Typescript with values assigned, then make an `extension`
```dart
// Use an extension as an enum https://stackoverflow.com/a/58552304
enum Routes { 
  home,  // index 0
  person // index 1
}

extension RoutesExtension on Routes {
  String get route {
    switch (this) {
      case Routes.home:
        return '/';
      case Routes.person:
        return '/person';
      default:
        return '/404';
    }
  }
}
```
Have seen some say think of it like a boolean, something with a finite amount of states.

---
## Navigation

First screen registration via main.dart via home or initialRoute param and should contain Scaffold. 

[Declarative vs Imperative](https://flutter.dev/docs/get-started/flutter-for/declarative)

Nav 1: imperative style, how to get to route, pop/push/pushNamed/onGenerateRoute  
Nav 2.0: declarative style, view configurations and let framework handle getting there

[Learning Flutter’s new navigation and routing system](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade)  
[How to use Flutter Navigator 2.0?](https://www.youtube.com/watch?v=wH16ROWAtAk)

---
## API calls

Fetching data uses Futures, async operation like observables.  
[Fetch data](https://flutter.dev/docs/cookbook/networking/fetch-data#testing)  
[State management options](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)  


---
## Optimisation

Add `const` before widgets that will never change, to force no rebuild. e.g. `const Text('text')`  

[Flutter Best Practices](https://flutter.dev/docs/perf/rendering/best-practices#best-practices)

<u>To cover:</u>  
Tree shaking  
Deferred loading / Lazy loading  
Disabled navigation transitions  



---
## General Terms

##### Sliver
Scrollable areas on the screen 

##### context
The widget's self. An object that contains information about the widget and where it sits in the tree. Information does not include state information but metadata used by the flutter ecosystem when deciding what rebuilds when and where. Can be seen passed around to many different things if they need to know.  
[Why you should care about BuildContext](https://engineering.liefery.com/2019/02/18/flutter-for-newbies-why-you-should-care-about-the-build-context.html)  
"Each widget has its own BuildContext, which becomes the parent of the widget returned by the `StatelessWidget.build.`"  
Use `Builder` to wrap content and pass current context down to builder property of `Builder`
e.g.
```dart
build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('My documents'),
    ),
    body: Builder( //body now wrapped in a Builder
      builder: (context) => // new BuildContext has a reference to the scaffold
```

##### of
A method found on many objects that returns the nearest parent of the thing you are calling it on. Needed in many places e.g.  
`Scaffold.of(context).yourMethodName` "From the given build context, return the nearest ancestor scaffold"  
`Theme.of(context)` "takes the supplied context and returns the nearest theme"

##### Scaffold
Material Design base layout. Tightly linked to `context` and `of`.  Use a `Builder` widget inside body to allow for the scaffold context to be passed down to its children. 

##### Ephemeral state
UI or local state of a StatefulWidget, something that won't be needed elsewhere. A state that is fine to reset if the app is closed.



---
# Questions

- Navigate without scaffold on each page. Library for generated routing recommended?
- Is services a thing? Class/object with functions?