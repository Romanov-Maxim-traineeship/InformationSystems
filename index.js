const { makeArray, fillArray } = require("./readline");
const bubbleSortArray = require("./bubbleSort");

console.log(bubbleSortArray(fillArray(makeArray())));
