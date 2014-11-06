function sum(a, b) {
  result = a + b
  return result;
}

function printGreeting(greeting, name) {
  if (greeting == null || greeting === undefined) {
      greeting = "Hello";
  }
if (name === null || name == undefined) {
    name = 'World';
  }
  console.log(greeting + ' ' + name);
}

console.log('sum(3, 4) = ' + sum(3, 4));

printGreeting("Hello", 'John');
printGreeting(null, 'Susan');
printGreeting();
