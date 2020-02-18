const readline = require("readline-sync");
let answer = [];

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

let max = { value: answer[0], index: 0 };

for (var i = 1; i < answer.length; i++) {
  if (max.value <= answer[i]) {
    max.value = answer[i];
    max.index = i;
  }
}

const multiply = answer
  .slice(0, max.index)
  .reduce((old, current) => old * current);

const sum = answer
  .slice(max.index + 1, answer.length)
  .reduce((old, current) => old + current);

try {
  if (multiply === sum) return console.log("Они равны");

  if (multiply > sum) {
    console.log(`произведение ${multiply} > сумма ${sum}`);
  } else {
    console.log(`произведение ${multiply} < сумма ${sum}`);
  }
} catch {
  console.log("Ошибка, введите заново массив");
  answer = fillArray(makeArray(+readline.question("Размер массива? ")));
}
