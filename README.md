# Queue-Data-Structure-in-Swift

**Queue** is a data structure that follows **First in First out (FIFO)** , which means that the element that added into the queue firstly will be removed firstly.

In case of someone wants to use it directly in Swift language, I impement the queue in Swift and people can use it directly. 

## How to use?

Initialize the queue
`let queue = Queue<Element>()`

Adding the element into the queue
`queue.enqueue(Element)`

Removing the last element out of the queue
`let output = queue.dequeue()`

