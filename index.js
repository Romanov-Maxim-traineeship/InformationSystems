const readlineSync = require("readline-sync");
let counter = 0;

const sentence = readlineSync.question("Введи свое предложение: ");
let word = readlineSync.question("Введи букву: ");
if (!word) {
  word = "space";
}
const separatedSentence = sentence.split("");

separatedSentence.forEach(separatedWord => {
  if (separatedWord === word) {
    counter++;
  }
  if (separatedWord === " " && word == "space") {
    counter++;
  }
});

console.log(`${Math.floor((counter / separatedSentence.length) * 100)}%`);
