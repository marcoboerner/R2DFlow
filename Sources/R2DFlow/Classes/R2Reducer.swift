//
//  Reducers.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

#if os(iOS)

import Foundation

public protocol R2ReducerActions: LabelAccessible {

}

public protocol R2Reducer: ObservableObject {

    associatedtype R2ReducerActionType: R2ReducerActions
    associatedtype R2StateType: R2State

    var state: R2StateType { get }

    func run(_ action: R2ReducerActionType)

    init(state: R2StateType)

}

#endif
