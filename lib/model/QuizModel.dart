class QuizModel {
  int? num;
  String? question;
  List<Map>? answer;

  QuizModel({this.num, this.question, this.answer});
}

List quiz = [

  //Science
  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar system?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar system?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 3,
        question: 'What is the smallest planet in the solar system?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': true},
        ]),
    QuizModel(
        num: 4,
        question: 'What is the first planet in the solar system?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 5,
        question: 'What is the first planet in the solar ?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
  ],

  //Art
  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar art?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar art?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 3,
        question: 'What is the smallest planet in the solar art?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': true},
        ]),
  ],


  //Sport

  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar leo?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar xavi?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 3,
        question: 'What is the smallest planet in the solar neymar?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': true},
        ]),
    QuizModel(
        num: 4,
        question: 'What is the first planet in the solar ronaldo?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 5,
        question: 'What is the first planet in the messi ?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
  ],


  //History

  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar 1824?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar 1932?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),

  ],

  //Cinema

  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar ahmad?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar rock?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 3,
        question: 'What is the smallest planet in the solar mr bean?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': true},
        ]),

  ],

  //Geography

  [
    QuizModel(
        num: 1,
        question: 'What is the sixth planet in the solar syria?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 2,
        question: 'What is the largest planet in the solar iraq?',
        answer: [
          {'text': 'Jupiter', 'result': true},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 3,
        question: 'What is the smallest planet in the solar usa?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': false},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': true},
        ]),
    QuizModel(
        num: 4,
        question: 'What is the first planet in the solar uk?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
    QuizModel(
        num: 5,
        question: 'What is the first planet in the solar saudi?',
        answer: [
          {'text': 'Jupiter', 'result': false},
          {'text': 'Saturn', 'result': true},
          {'text': 'Earth', 'result': false},
          {'text': 'Neptune', 'result': false},
        ]),
  ],




];
