//
//  Workflow.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

#if os(iOS)

import Foundation

public protocol WorkflowActions: LabelAccessible {

}

open class Workflow<A: AppState>: ObservableObject {

    public let state: A
    public let reducer: Reducer<A>

    open func run(_ action: A.WorkflowActionType) {

    }

    required public init(state: A) {
        self.state = state
        self.reducer = Reducer(state: state)
    }

}

#endif
