class Question {
    var questionText: String
    var answerText: Bool
    
    init(questionTextInput: String, answerTextInput: Bool) {
        questionText = questionTextInput
        answerText = answerTextInput
    }
}

class QuestionBank {
    var questionArray = [Question]()
    
    init() {
        questionArray.append(Question.init(questionTextInput: "A", answerTextInput: true))
        questionArray.append(Question.init(questionTextInput: "B", answerTextInput: false))
        questionArray.append(Question.init(questionTextInput: "C", answerTextInput: true))
        questionArray.append(Question.init(questionTextInput: "D", answerTextInput: false))
        questionArray.append(Question.init(questionTextInput: "E", answerTextInput: true))
        questionArray.append(Question.init(questionTextInput: "F", answerTextInput: false))
        questionArray.append(Question.init(questionTextInput: "G", answerTextInput: true))
        questionArray.append(Question.init(questionTextInput: "H", answerTextInput: false))
        questionArray.append(Question.init(questionTextInput: "I", answerTextInput: true))
        questionArray.append(Question.init(questionTextInput: "J", answerTextInput: false))
//        print(questionArray[0])
    }
}

let allQuestions = QuestionBank()
let firstQuestion = allQuestions.questionArray[0]
let a = firstQuestion.questionText


