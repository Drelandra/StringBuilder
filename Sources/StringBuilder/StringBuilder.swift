import Foundation

@resultBuilder
public struct StringBuilder {
    
    static func buildBlock(_ components: StringConvertible...) -> String {
        var customText = ""
        for (index, component) in components.enumerated() {
            let isLastIndex: Bool = index == (components.count - 1)
            if let customStringGroup = component as? StringGroup {
                let isEnter: Bool = customStringGroup.separator == "\n"
                let textString = customStringGroup.text.replacingOccurrences(
                    of: "\n",
                    with: customStringGroup.separator
                )
                customText += isEnter ? (isLastIndex ? textString : (textString + "\n")) : (isLastIndex ? textString : (textString + "\n"))
            } else {
                customText += isLastIndex ? component.text : (component.text + component.separator)
            }
        }
        return customText
    }

    static func buildEither(first component: StringConvertible) -> String {
        component.text
    }

    static func buildEither(second component: StringConvertible) -> String {
        component.text
    }

    static func buildArray(_ components: [StringConvertible]) -> String {
        var customText = ""
        for (index, component) in components.enumerated() {
            let isLastIndex: Bool = index == (components.count - 1)
            if let stringGroup = component as? StringGroup {
                customText += isLastIndex ? stringGroup.text : (stringGroup.text + stringGroup.separator)
            } else if let customStringGroup = component as? StringGroup {
                let textString = customStringGroup.text.replacingOccurrences(
                    of: "\n",
                    with: customStringGroup.separator
                )
                customText += isLastIndex ? textString : (textString + "\n")
            } else {
                customText += isLastIndex ? component.text : (component.text + component.separator)
            }
        }
        return customText
    }
}
