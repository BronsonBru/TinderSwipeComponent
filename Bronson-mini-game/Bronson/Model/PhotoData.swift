import UIKit
import Foundation

enum RoundType {
    case cyber
    case camping1
    case camping2
    case cybersad
    case cute
    case cyberlove


    func image() -> UIImage {
        switch self {
        case .cyber:
            return Asset.Bronson.cyber.image

        case .cybersad:
            return Asset.Bronson.cybersad.image

        case .camping1:
            return Asset.Bronson.camping.image

        case .camping2:
            return Asset.Bronson.camping2.image

        case.cute:
            return Asset.Bronson.cute.image

        case.cyberlove:
            return Asset.Bronson.cyberlove.image

        }
    }
}

struct CardInfo {
    var type: RoundType
    var questionText: String

}

extension CardInfo {
    static func startingData() -> [CardInfo] {
        return [
            CardInfo(type: .cyber, questionText: "Do you worry about abandonment?"),
            CardInfo(type: .cybersad, questionText: "Do you question the loyality of others?"),
            CardInfo(type: .camping1, questionText: "Is it difficult for you to trust others?"),
            CardInfo(type: .camping2, questionText: "Are you honest with your partner?"),
            CardInfo(type: .cyberlove, questionText: "Can you open up to your partner?")
        ]
    }
}
