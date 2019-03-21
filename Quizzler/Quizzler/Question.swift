import Foundation

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
                questionArray.append(Question.init(questionTextInput: "Approximately one quarter of human bones are in the feet", answerTextInput: true))
                questionArray.append(Question.init(questionTextInput: "The total surface area of two human lungs is approximately 70 square metres", answerTextInput: true))
                questionArray.append(Question.init(questionTextInput: "Google was originally called \"Backrub\"", answerTextInput: true))
                questionArray.append(Question.init(questionTextInput: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place", answerTextInput: false))
                questionArray.append(Question.init(questionTextInput: "You can lead a cow down stairs but not up stairs", answerTextInput: false))
    }
}
