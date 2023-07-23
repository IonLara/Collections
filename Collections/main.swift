//
//  main.swift
//  Collections
//
//  Created by Ion Sebastian Rodriguez Lara on 23/07/23.
//

import Foundation

var stack: Stack<Int> = Stack()
var queue: Queue<Int> = Queue()
stack.push(item: 1)
queue.enqueue(element: 1)
stack.push(item: 2)
queue.enqueue(element: 2)
stack.push(item: 3)
queue.enqueue(element: 3)
stack.push(item: 4)
queue.enqueue(element: 4)

print("Stack:")
for item in stack {
    print(item)
}

print("Queue:")
for item in queue {
    print(item)
}

