//
//  AppState.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

#if os(iOS)

import Foundation

public protocol R2State: ObservableObject, Equatable {
    associatedtype R2ReducerActionType: R2ReducerActions
    associatedtype R2WorkflowActionType: R2WorkflowActions
}

#endif
