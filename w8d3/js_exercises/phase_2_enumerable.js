const myMap = Symbol("myMap");
Array.prototype[myMap] = function (cb) {
  mapped = [];
  this.forEach(function (el) {
    let result = cb(el);
    mapped.push(result);
  });
  return mapped;
};

function myPlusTen(el) {
  return el + 10;
}

// let testArray = [1, 2, 3, 4, 5, 6];

// console.log(testArray[myMap](myPlusTen) );

// Array#myReduce(callback[, initialValue]) - (like Ruby's Array#inject) receives a callback function, and optional initial value, returns an accumulator by applying the callback function to each element and the result of the last invocation of the callback (or initial value if supplied)

const myReduce = Symbol("myReduce");
Array.prototype[myMap] = function (cb, iter = 1) {
  mapped = [];
  let result = iter;
  this.forEach(function (el) {
    mapped.push(cb(iter, el));
  });
  return mapped;
};

function multiplyByTwo(it, ele) {
  return it * ele;
};

// const myMap = Symbol("myMap");
// Array.prototype[myMap] = function (cb) {
//   mapped = [];
//   this.forEach(function (el) {
//     let result = cb(el);
//     mapped.push(result);
//   });
//   return mapped;
// };

// function myPlusTen(el) {
//   return el + 10;
// }

// let testArray = [1, 2, 3, 4, 5, 6];

// console.log(testArray[myMap](myPlusTen) );

// Array#myReduce(callback[, initialValue]) - (like Ruby's Array#inject) receives a callback function, and optional initial value, returns an accumulator by applying the callback function to each element and the result of the last invocation of the callback (or initial value if supplied)

// const myReduce = Symbol("myReduce");
// Array.prototype[myMap] = function (cb, iter = 1) {
//   mapped = [];
//   let result = iter;
//   this.forEach(function (el) {
//     mapped.push(cb(iter, el));
//   });
//   return mapped;
// };

// function multiplyByTwo(it, ele) {
//   return it * ele;
// };