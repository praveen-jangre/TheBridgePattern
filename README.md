# The Bridge Pattern (A structural design pattern)
The Bridge Structural design pattern simplifies type hierarchies that offer different variations of a given functionality by separating concerns into two main interfaces.
The Bridge pattern separates an abstraction from its concrete implementation, allowing them to vary independently.

* Separates abstraction from implementation
* Simplifies type hierarchies
* Prevents "exploding class hierarchies"

## How it works
* Separates concerns into a client-facing abstraction and its implementation
* The two parts are connected through object composition

## Can be combined with Creational Patterns
* Increase decoupling between client code and implementation details

## Benefits
* Decouples abstraction from implementation
* Enhances flexibility and scalability
* Reduces the proliferation of classes



## Pitfall
* Adds to code complexity
* Failing to properly separates the layers
* Avoids if "exploding class hierarchies" is not reat threat

