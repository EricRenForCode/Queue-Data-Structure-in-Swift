//
//  Node.swift
//  QueueDataStructure
//
//  Created by Pengyu Ren on 2020/9/21.
//

import Foundation

public class Node<Element> {
    var data: Element
    var next: Node<Element>?
    var prev: Node<Element>?
    init(data: Element) {
        self.data = data
    }
}
