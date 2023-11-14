//
//  StringQueue.swift
//  Lab0 Swift
//
//  Created by Dragosh on 14.11.2023.
//

import Foundation

func stringQueue() {
    var stringQueue = ArrayQueue<String>(capacity: 5)

    while true {
        print("Enter 'enqueue', 'dequeue', or 'exit':")
        if let action = readLine() {
            switch action {
            case "enqueue":
                print("Enter a string to enqueue:")
                if let value = readLine() {
                    stringQueue.enqueue(value)
                    print("Enqueued '\(value)'")
                }
            case "dequeue":
                if let dequeued = stringQueue.dequeue() {
                    print("Dequeued: \(dequeued)")
                } else {
                    print("Queue is empty.")
                }
            case "print":
                print("Queue elements: \(stringQueue.elements())")
            case "exit":
                print("Exiting...")
                break
            default:
                print("Invalid command.")
            }
        }
    }

}
