//
//  ThemedView.swift
//  TheBridgePattern
//
//  Created by Praveen Jangre on 12/06/2025.
//

import Foundation

//public protocol ThemedView {
//    func draw()
//}

//public class Label: ThemedView {
//    public init() {}
//    
//    public func draw() {
//        print("Drawing Label")
//    }
//}
//
//public class Button: ThemedView {
//    public init() {}
//    
//    public func draw() {
//        print("Rendering Button")
//    }
//}
//
//public class TextField: ThemedView {
//    public init() {}
//    
//    public func draw() {
//        print("Rendering TextField")
//    }
//}
//
//
//// MARK: UI Component with Dark theme
//
//public class DarkLabel: Label {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Dark theme")
//    }
//}
//public class DarkButton: Button {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Dark theme")
//    }
//}
//public class DarkTextField: TextField {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Dark theme")
//    }
//}
//
//// MARK: UI Component with Light theme
//public class LightLabel: Label {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Light theme")
//    }
//}
//public class LightButton: Button {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Light theme")
//    }
//}
//public class LightTextField: TextField {
//    public override func draw() {
//        super.draw()
//        print("\t Applying Light theme")
//    }
//}
//
//
//// MARK: UI Component with High Contrast theme
//public class HighContrastLabel: Label {
//    public override func draw() {
//        super.draw()
//        print("\t Applying HighContrast theme")
//    }
//}
//public class HighContrastButton: Button {
//    public override func draw() {
//        super.draw()
//        print("\t Applying HighContrast theme")
//    }
//}
//public class HighContrastTextField: TextField {
//    public override func draw() {
//        super.draw()
//        print("\t Applying HighContrast theme")
//    }
//}





func implementTheBridgeDesignPattern() {
//    let button = Button()
//    let label = Label()
//    let darkLabel = DarkLabel()
//    let lightButton = LightButton()
//    let highContrastTextField = HighContrastTextField()
    
    let darkTheme = ThemeType.dark.createTheme()
    let lightTheme = ThemeType.light.createTheme()
    let highContrastTheme = ThemeType.highContrast.createTheme()
    

    let darkLabel = Label(theme: darkTheme)
    let lightButton = Button(theme: lightTheme)
    let highContrastTextField = TextField(theme: highContrastTheme)

    darkLabel.draw()
    lightButton.draw()
    highContrastTextField.draw()
}



// MARK: The Bridge design pattern implementation
public protocol Theme {
    func apply()
}

public struct DarkTheme: Theme {
    public func apply() {
        print("\t Applying Dark Theme")
    }
}

public struct LightTheme: Theme {
    public func apply() {
        print("\t Applying Light Theme")
    }
}
public struct HighContrastTheme: Theme {
    public func apply() {
        print("\t Applying High Contrast Theme")
    }
}


public enum ThemeType {
    case light, dark, highContrast
    
    public func createTheme() -> Theme {
        switch self {
        case .light:
            return LightTheme()
        case .dark:
            return DarkTheme()
        case .highContrast:
            return HighContrastTheme()
        }
    }
}

public protocol ThemedView {
    init(theme: Theme?)
    
    func draw()
}


public class Label: ThemedView {
    private var theme: Theme?
    
    public required init(theme: (any Theme)?) {
        self.theme = theme
    }
    
    public func draw() {
        print("Drawing Label")
        theme?.apply()
    }
}

public class Button: ThemedView {
    private var theme: Theme?
    
    public required init(theme: (any Theme)?) {
        self.theme = theme
    }
    
    public func draw() {
        print("Rendering Button")
        theme?.apply()
    }
}

public class TextField: ThemedView {
    private var theme: Theme?
    
    public required init(theme: (any Theme)?) {
        self.theme = theme
    }
    
    public func draw() {
        print("Rendering TextField")
        theme?.apply()
    }
}



