import UIKit

struct ContentManger {}
protocol ContentComponent {
    associatedtype ContentType
    func apply(theme: ContentType)
}

extension ContentManger {
    struct ViewController: ContentComponent {
        enum ViewControllerContentType {
            case `default`
        }
        
        let label: UILabel
        let button: UIButton

        init(label: UILabel, button: UIButton) {
            self.label = label
            self.button = button
        }

        func apply(theme: ViewControllerContentType) {
            switch theme {
            case .default:
                label.text = "hello"
                button.setTitle("Submit", for: .normal)
            }
        }
    }
}

