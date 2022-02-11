//
//  Workflow.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

#if os(iOS)

import Foundation

public protocol R2WorkflowActions: LabelAccessible {

}

open class R2Workflow<T: R2State>: ObservableObject {

    public let state: T
    public let reducer: R2Reducer<T>

    open func run(_ action: T.R2WorkflowActionType) {

    }

    required public init(state: T) {
        self.state = state
        self.reducer = R2Reducer(state: state)
    }

}

#endif
