import SwiftUI

struct Colors: ShapeStyle {
    func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        if environment.colorScheme == .light {
            return Colors.Background.mainCyan
        } else {
            return Colors.Background.secondaryCyan
        }
    }
    // MARK: - Background Colors
    enum Background {
        static let mainPurple = Color(UIColor(red: 50/255, green: 2/255, blue: 40/255, alpha: 1.0))
        static let secondaryPurple = Color(UIColor(red: 60/255, green: 2/255, blue: 30/255, alpha: 1.0))
        static let mainCyan = Color(UIColor(red: 17/255, green: 242/255, blue: 254/255, alpha: 1.0))
        static let secondaryCyan = Color(UIColor(red: 100/255, green: 242/255, blue: 254/255, alpha: 1.0))
    }
}
