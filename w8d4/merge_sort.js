Array.prototype.mergeSort = function(cb) {
  if(this.length <= 1){
    return this;
  }

  let mid = Math.floor(this.length / 2),
      left = this.slice(0,mid),
      right = this.slice(mid);

      left = left.mergeSort(cb);
      right = right.mergeSort(cb);

  return merge(left, right, cb);
}

function merge(left, right, cb){
  let merged = [];

  while(left.length !== 0 && right.length !== 0){
    if(cb(left[0], right[0])){
      merged.push(left.shift());
    } else {
      merged.push(right.shift());
    }
  }
  return merged.concat(left, right);
}

function cb(left, right){
  if(left <= right) {
    return true;
  }
  return false;
}
arr = [4,5,2,34,76,81,24];
console.log(arr.mergeSort(cb));

