const { makeArray, fillArray } = require("./readline");
const bubbleSortArray = require("./bubbleSort");

const arr = fillArray(makeArray());

console.log(
  bubbleSortArray(arr.filter(item => typeof item === "number" && !isNaN(item)))
);
