const readlineSync = require("readline-sync");

var sentence = readlineSync.question(
  "Введи свое предложение и я найду палиндром: "
);

const sentenceArray = sentence
  .trim()
  .replace(/,/g, "")
  .toLowerCase()
  .split(" ")
  .join("");

const sentenceWordsArray = sentence
  .trim()
  .replace(/,/g, "")
  .toLowerCase()
  .split(" ");

for (let i = 0; i < sentenceWordsArray.length; i++) {
  const newReverseWord = sentenceWordsArray[i]
    .split("")
    .reverse()
    .join("");
  sentenceWordsArray[i] = newReverseWord;
}

const reverseSentence = sentenceWordsArray.reverse().join("");

if (sentenceArray === reverseSentence) {
  console.warn("Да! Палиндром!");
} else {
  console.warn("Нет! Не палиндром!");
}
