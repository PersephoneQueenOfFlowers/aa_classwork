const myBubbleSort = Symbol("myBubbleSort");
Array.prototype[myBubbleSort] = function (cb) {
  let sorted = this;
  let idx = 1;
  while (JSON.stringify(sorted.sort()) !== JSON.stringify(sorted)) {
    let twoSorted = cb(sorted[idx], sorted[idx + 1]);
    sorted[idx] = twoSorted[0];
    sorted[idx + 1] = twoSorted[1];
    if (idx < sorted.length - 1) {
      idx += 1;
    } else {
      break;
    }
  }
  return sorted;
}

function theSort(el1, el2) {
  return (el1 > el2 ? [el2, el1] : [el1, el2]);
};

let testArray = [1, 6, 3, 2, 8];
console.log(testArray[myBubbleSort](theSort));











