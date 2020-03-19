module.exports = bubbleSortArray = arr => {
  for (let i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      arr[i + 1] = [arr[i], (arr[i] = arr[i + 1])][0];
      bubbleSortArray(arr);
    }
  }

  return arr;
};
