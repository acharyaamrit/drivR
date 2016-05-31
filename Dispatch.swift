//
//  File.swift
//  Concurrency-Alone
//
//  Created by Eran Artzi on 4/8/16.
//  Copyright © 2016 Eran Artzi. All rights reserved.
//

import Foundation


public struct Dispatch {
    
    public typealias Block = () -> ()
    
    
    public static func main(block: Block) {
        
        let queue = dispatch_get_main_queue()
        dispatch_async(queue, block)
    }
    
    
    public static func async(block: Block) {
        
        let queue = dispatch_queue_create("mapQueue", DISPATCH_QUEUE_SERIAL)
        dispatch_async(queue, block)
    }
    
    
}







