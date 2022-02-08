//
//  Reducers.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

#if os(iOS)

import Foundation

public protocol ReducerActions: LabelAccessible {

}

open class Reducer<A: AppState>: ObservableObject {

    public let state: A

    open func run(_ action: A.ReducerActionType) {

    }

    required public init(state: A) {
        self.state = state
    }

}

#endif
