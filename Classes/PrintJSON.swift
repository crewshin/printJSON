//
//  PrintJSON.swift
//
//  Created by Gene Crucean on 10/1/17.
//  Copyright © 2017 Gene Crucean. All rights reserved.
//

import UIKit

public func printJSON(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    let output = items.map { (item) -> Any in
        switch item {
        case is Array<Any>:
            if let itemUnwrapped = item as? [Any] {
                let json = try? JSONSerialization.data(withJSONObject: itemUnwrapped, options: [])
                let jsonString = String(data: json ?? Data(), encoding: String.Encoding.utf8) ?? ""
                return "\(jsonString)"
            }
            
            return item
        case is Dictionary<String, Any>:
            if let itemUnwrapped = item as? [String: Any] {
                let json = try? JSONSerialization.data(withJSONObject: itemUnwrapped, options: [])
                let jsonString = String(data: json ?? Data(), encoding: String.Encoding.utf8) ?? ""
                return "\(jsonString)"
            }
            
            return item
        default:
            return "{\"input\": \"\(item)\"}"
        }
    }
    
    if output.count == 1 {
        Swift.print(output.first ?? ["Error within printJSON"], terminator: terminator)
    }
    else {
        Swift.print(output, terminator: terminator)
    }
}
