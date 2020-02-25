const readline = require("readline-sync");
let answer = [],
  newAnswer = [],
  average = 0;

const makeArray = width => {
  if (width <= 2) {
    console.log("Длинны не достаточно");
    return (answer = fillArray(
      makeArray(+readline.question("Размер массива? "))
    ));
  }
  let outputArray = new Array(width);
  return outputArray;
};

const fillArray = array => {
  console.log("Заполните массив: ");
  for (let i = 0; i < array.length; i++) {
    const numberForArray = readline.question(`${i} элемент: `);

    array[i] = +numberForArray;
  }
  return array;
};

answer = fillArray(makeArray(+readline.question("Размер массива? ")));

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
