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

open class R2Reducer<T: R2State>: ObservableObject {

    public let state: T

    open func run(_ action: T.R2ReducerActionType) {

    }

    required public init(state: T) {
        self.state = state
    }

}

#endif
