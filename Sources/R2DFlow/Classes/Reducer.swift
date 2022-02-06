//
//  Reducers.swift
//  R2DFlow
//
//  Created by Marco Boerner on 05.02.22.
//

import Foundation

protocol ReducerAction: RawRepresentable, LabelAccessible {

}

public class Reducer<A: AppState>: ObservableObject {

    let state: A

    func run<R: ReducerAction>(_ action: R) {

    }

    init(state: A) {
        self.state = state
    }

}
