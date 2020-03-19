const readline = require("readline-sync");

const makeArray = () => {
  const getArraySize = () => {
    const width = +readline.question("Размер массива? ");
    if (isNaN(+width) || +width < 1) return getArraySize();
    return width;
  };

  return new Array(getArraySize());
};

const fillArray = array => {
  console.log("Заполните массив: ");

  const fillItemOfNumber = i => {
    const numberForArray = readline.question(`${i} элемент: `);
    if (isNaN(+numberForArray)) return fillItemOfNumber(i);
    array[i] = +numberForArray;
  };

  for (let i = 0; i < array.length; i++) {
    fillItemOfNumber(i);
  }

  return array;
};

module.exports = { makeArray, fillArray };
