//
//  CalculatorVM.swift
//  tipCalculator
//
//  Created by David Kochkin on 12.02.2024.
//

import Foundation
import Combine

class CalculatorVM {
    
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    func trasnform(input: Input) -> Output {
        
        let result = Result(amountPerPerson: 500,
                            totalBill: 1000,
                            totalTip: 50.0)
        
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
}
