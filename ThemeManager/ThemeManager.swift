import UIKit

struct ThemeManager {
}
protocol ThemeComponent {
    associatedtype Theme
    func apply(theme: Theme)
}
extension ThemeManager {
    
    struct ViewController: ThemeComponent {
        enum Theme {
            case `default`
        }
        
        private let navigationBar: NavigationBar
        private let label: UILabel
        private let button: UIButton
        
        init(navBarTheme: NavigationBar, label: UILabel, button: UIButton) {
            self.navigationBar = navBarTheme
            self.label = label
            self.button = button
        }
        
        func apply(theme: Theme) {
            switch theme {
            case .default:
                defaultTheme()
            }
        }
        
        private func defaultTheme() {
            navigationBar.apply(theme: .default)
            
            label.tintColor = .red
            label.textColor = .green
            label.backgroundColor = .blue
            
            button.tintColor = .blue
            button.backgroundColor = .yellow
        }
    }
    
    struct NavigationBar: ThemeComponent {
        enum Theme {
            case `default`
        }
        
        private let navigationBar: UINavigationBar
        
        
        init(navBar: UINavigationBar) {
            self.navigationBar = navBar
        }
        
        func apply(theme: Theme) {
            switch theme {
            case .default:
                defaultTheme()
            }
        }
        
        private func defaultTheme() {
            navigationBar.isTranslucent = false
            navigationBar.barStyle = .default
            navigationBar.barTintColor = .green
            navigationBar.titleTextAttributes = [
                NSAttributedStringKey.foregroundColor: UIColor.white
            ]
            navigationBar.tintColor = .purple
        }
    }
}
