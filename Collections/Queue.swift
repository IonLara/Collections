//
//  Queue.swift
//  Collections
//
//  Created by Ion Sebastian Rodriguez Lara on 23/07/23.
//

import Foundation

public final class Queue<E>: Sequence {
    
    private var collection: [E]
    var count: Int {
        collection.count
    }
    
    init() {
        collection = [E]()
    }
    
    func enqueue(element: E) {
        collection.append(element)
    }
    
    func dequeue() -> E? {
        if isEmpty() {
            return nil
        }
        return collection.removeFirst()
    }
    
    func peek() -> E? {
        if isEmpty() {
            return nil
        }
        return collection[0]
    }
    
    func isEmpty() -> Bool {
        return !(count > 0)
    }
    
    public func makeIterator() -> QueueIterator<E> {
        QueueIterator(self)
    }
}

public struct QueueIterator<E>: IteratorProtocol {
    let queue: Queue<E>
    var elements = [E]()

    init(_ queue: Queue<E>) {
        self.queue = queue
    }
    
    public mutating func next() -> E? {
        if queue.isEmpty() {
            for element in elements {
                queue.enqueue(element: element)
            }
            return nil
        }
        let next = queue.dequeue()
        elements.append(next!)
        
        return next
    }
}
