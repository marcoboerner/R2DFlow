//
//  Workflow.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

import Foundation

public protocol WorkflowAction: RawRepresentable, LabelAccessible {

}

public class Workflow<A: AppState>: ObservableObject {

    let state: A
    let reducer: Reducer<A>

    public func run<W: WorkflowAction>(_ action: W) {

    }

    internal init(state: A) {
        self.state = state
        self.reducer = Reducer(state: state)
    }

}
