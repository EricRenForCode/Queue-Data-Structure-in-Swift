//
//  Queue.swift
//  QueueDataStructure
//
//  Created by Pengyu Ren on 2020/9/21.
//

import Foundation


public class Queue<Element> {
    
    typealias DLLNode = Node<Element>
    
    var myNode: DLLNode!
    var tailNode: DLLNode!
    var head: DLLNode? {
        get {
            return myNode
        }
        set(newNode) {
            myNode = newNode
        }
    }
    var tail: DLLNode? {
        get {
            return tailNode
        }
        set(newNode) {
            tailNode = newNode
        }
        
    }
    public var isEmpty: Bool {
        return head == nil
    }
    
    public init() {
        
    }
    /**
     Adding element into the head of the queue
     */
    public func enqueue(_ value: Element) -> Void {
        let newNode = DLLNode(data:value)
        guard head != nil else {
            head = newNode
            tail = head
            return
        }
        head!.prev = newNode
        newNode.next = head
        head = newNode
    }
    /**
     Removing the element from the tail of the queue
     */
    public func dequeue() -> Element? {
        let result = tail
        guard result != nil else {
            return nil
        }
        guard tail!.prev != nil else {
            head = nil
            tail = nil
            return result!.data
        }
        tail!.prev!.next = nil
        tail = result!.prev
        result!.prev = nil
        return result!.data
    }
    
}


