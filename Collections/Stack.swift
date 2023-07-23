//
//  Stack.swift
//  Collections
//
//  Created by Ion Sebastian Rodriguez Lara on 23/07/23.
//

import Foundation

public final class Stack<E> : Sequence {
    
    private var collection: [E]
    var count: Int {
        collection.count
    }
    
    init() {
        collection = [E]()
    }
    
    func push(item: E) {
        collection.append(item)
    }
    
    func pop() -> E? {
        return collection.removeLast()
    }
    
    func peek() -> E? {
        return collection[collection.count - 1]
    }
    
    func isEmpty() -> Bool {
        !(collection.count > 0)
    }
    
    public func makeIterator() -> StackIterator<E> {
        StackIterator(self)
    }
}

public struct StackIterator<E>: IteratorProtocol {
    let stack: Stack<E>
    var elements = [E]()

    init(_ stack: Stack<E>) {
        self.stack = stack
    }


    public mutating func next() -> E? {
        if stack.isEmpty() {
            for element in elements {
                stack.push(item: element)
            }
            return nil
        }
        let next = stack.pop()
        elements.insert(next!, at: 0)
        
        return next
    }
}
