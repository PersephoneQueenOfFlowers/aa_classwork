const uniq = Symbol("uniq")

Array.prototype[uniq] = function() {
  let unique = [];
  // debugger
  this.forEach(function (el){
    if ( unique.includes(el) === false ) {
      unique.push(el);
    } 
  });
  return unique;
} 

// Array#twoSum - returns an array of position pairs where the elements sum to zero




const twoSum = Symbol("twoSum")

Array.prototype[twoSum] = function (cb) {
  console.log(self);
  let twoSums = [];
    for(let i = 0; i < this.length; i++ ){
      for (let j = 1; j < this.length; j++){
        if(j > i){
          if (cb(this[i], this[j]) === true){
            twoSums.push(this[i]);
            twoSums.push(this[j]);
          }
        }
      }
    }
  return twoSums;
} 

function twoSumZero(el1,el2){
  return (el1 + el2 === 0);
}

// let testArray = [1,2,-2,4,-4,3,5,6];

// console.log(testArray[twoSum](twoSumZero));


// Array#transpose - where we have a two - dimensional array representing a matrix.returns the transpose
// should not mutate the original array


// Array#myMap(callback) 

const myTranspose = Symbol("myTranspose");
Array.prototype[myTranspose] = function(cb) {
  transposed = [];
  let i = 0;
  for(let i = 0; i < this[0].length; i++){
    let row = [];
    for (let j = 0; j < this[0].length; j++){
      row.push(this[j][i])
    }
    transposed.push(row);
  }
  return transposed;
}

let transposable =  [[5,10,15],[2,4,6],[1,3,5]];

console.log(transposable[myTranspose](twoSumZero));











// Array#myMap(callback) 

// const myMap = Symbol("myMap");
// Array.prototype[myMap] = function(cb) {
//   mapped = [];
//   this.forEach(function (el) {
//     let result = cb(el); 
//     mapped.push(result);
//   });
//   return mapped;
// };

// function myPlusTen(el){
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
//     mapped.push(cb(iter,el));
//   });
//   return mapped;
// };

// function multiplyByTwo(it, ele) {
//   return it * ele;
// };

// let testArray = [1, 2, 3, 4, 5, 6];
// console.log(testArray[myMap](multiplyByTwo, 2) );

// const myBubbleSort = Symbol("myBubbleSort");
// Array.prototype[myBubbleSort] = function (cb) {
//   let sorted = this; 
//   let idx = 1;
//   while (JSON.stringify(sorted.sort()) != JSON.stringify(sorted)) {
//     let twoSorted = cb(sorted[idx], sorted[idx+1]);
//     sorted[idx] = twoSorted[0];
//     sorted[idx+1] = twoSorted[1];
//     if(idx < sorted.length - 1){
//       idx += 1;
//     } else {
//       break;
//     }
//   }
//   return sorted;
// }

// function theSort(el1,el2) {
//   return (el1 > el2 ? [el2,el1] : [el1,el2]);
// };

// let testArray = [1, 6, 3, 2, 8];
// console.log(testArray[myBubbleSort](theSort) );









