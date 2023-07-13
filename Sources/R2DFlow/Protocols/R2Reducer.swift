//
//  Reducers.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

import Foundation
import OpenHelper

public protocol R2ReducerAction: LabelAccessible {

}

public protocol R2ReducerNestedAction: LabelAccessible {

}

public protocol R2Reducer: ObservableObject {

    associatedtype R2ReducerActionType: R2ReducerAction
    associatedtype R2StateType: R2State

    var state: R2StateType { get }

    func run(_ action: R2ReducerActionType, file: String, line: Int)

    init(state: R2StateType)

}
