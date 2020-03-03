const { makeArray, fillArray } = require("./readline");
let answer = [],
  newAnswer = [],
  average = 0;

answer = fillArray(makeArray());

let findElements = {
  min: {
    index: answer.findIndex(element => element === Math.min(...answer)),
    element: Math.min(...answer)
  },
  max: {
    index: answer.findIndex(element => element === Math.max(...answer)),
    element: Math.max(...answer)
  }
};

const { min, max } = findElements;

if (min.index < max.index) {
  newAnswer = answer.slice(min.index + 1, max.index);
} else {
  newAnswer = answer.slice(max.index + 1, min.index);
}

average = newAnswer.reduce((acc, number) => acc + number) / newAnswer.length;

console.log("Average is - ", average);
