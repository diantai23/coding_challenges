var readlineSync = require('readline-sync');
var howMany = readlineSync.question('How many digits do you want to see? ');

for (var iteration = 1; iteration <= Number(howMany); iteration++) {
  if (iteration % 3 === 0 && iteration % 5 === 0) {
    console.log("FooBar");
  }
  else if (iteration % 3 === 0) {
    console.log("Foo");
  }
  else if (iteration % 5 === 0) {
    console.log("Bar");
  }
  else {
    console.log(iteration);
  }
}
