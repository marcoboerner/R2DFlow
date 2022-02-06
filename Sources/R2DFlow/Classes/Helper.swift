//
//  Helper.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

import Foundation

public protocol LabelAccessible { }

public extension LabelAccessible {
    /// Returns the label of the enum case
    var label: String {
        return Mirror(reflecting: self).children.first?.label ?? String(describing: self)
    }
}
