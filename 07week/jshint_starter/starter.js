function sum(a, b) {
  result = a + b
  return result;
}

function print_greeting(greeting, name) {
  if (greeting == null || greeting === undefined) {
      greeting = "Hello";
  }
if (name === null || name == undefined) {
    name = 'World';
  }
  console.log(greeting + ' ' + name);
}

console.log('sum(3, 4) = ' + sum(3, 4));

print_greeting("Hello", 'John');
print_greeting(null, 'Susan');
print_greeting();
