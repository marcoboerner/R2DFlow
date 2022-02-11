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

public protocol R2Workflow: ObservableObject {

    associatedtype R2WorkflowActionType: R2WorkflowActions
    associatedtype R2StateType: R2State
    associatedtype R2ReducerType: R2Reducer

    var state: R2StateType { get }
    var reducer: R2ReducerType { get }


    func run(_ action: R2WorkflowActionType)

    init(state: R2StateType, reducer: R2ReducerType)

}

#endif
