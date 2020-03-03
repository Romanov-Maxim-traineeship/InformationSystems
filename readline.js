const readline = require("readline-sync");

const makeArray = () => {
  const width = +readline.question("Размер массива? ");
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

module.exports = { makeArray, fillArray };
