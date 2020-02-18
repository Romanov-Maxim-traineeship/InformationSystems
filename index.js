const readline = require("readline-sync");

let answer = [];

const makeArray = height => {
  if (height <= 2) {
    console.log("Длинны не достаточно");
    return (answer = fillArray(
      makeArray(+readline.question("Размер массива? "))
    ));
  }
  let outputArray = new Array(height);
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

const minItem = answer.findIndex(
  answerItem => answerItem === Math.min(...answer)
);

if (minItem === 0 || minItem === answer.length - 1) {
  console.log("Минимальное значение в начале или в конце");
  answer = fillArray(makeArray(+readline.question("Размер массива? ")));
}

try {
  if (
    answer.slice(0, minItem).reduce((acc, current) => acc + current) >
    answer
      .slice(minItem + 1, answer.length)
      .reduce((acc, current) => acc * current)
  ) {
    console.log("первый больше");
  } else {
    console.log("второй больше");
  }
} catch {
  console.log("Ошибка, введите заново массив");
  answer = fillArray(makeArray(+readline.question("Размер массива? ")));
}
