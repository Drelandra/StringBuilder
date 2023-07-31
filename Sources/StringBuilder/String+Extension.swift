//
//  File.swift
//  
//
//  Created by Andre Elandra on 31/07/23.
//

import Foundation

extension String: StringConvertible {
    public var separator: String { "\n" }
    public var text: String { self }
}
