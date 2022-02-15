//
//  File.swift
//  
//
//  Created by Marco Boerner on 15.02.22.
//
#if os(iOS)

import Combine

public protocol R2Reactor {

    associatedtype R2StateType: R2State
    associatedtype R2ReducerType: R2Reducer
    associatedtype R2WorkflowType: R2Workflow

    var state: R2StateType { get }
    var reducer: R2ReducerType { get }
    var workflow: R2WorkflowType { get }
    var subscribers: [AnyCancellable] { get set }

    init(state: R2StateType, reducer: R2ReducerType, workflow: R2WorkflowType)
}

#endif
