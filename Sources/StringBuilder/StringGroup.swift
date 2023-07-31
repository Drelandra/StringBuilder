//
//  File.swift
//  
//
//  Created by Andre Elandra on 31/07/23.
//

import Foundation

public struct StringGroup {
    var groupSeparator: String?
    var groupText: String
    
    init(name: String? = nil,
         separator: String? = nil,
         @StringBuilder builder: () -> String) {
        self.groupSeparator = separator
        self.groupText = builder()
    }
}

extension StringGroup: StringConvertible {
    public var separator: String { groupSeparator ?? "\n" }
    public var text: String { groupText }
}
