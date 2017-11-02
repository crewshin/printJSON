//
//  PrintJSON.swift
//
//  Created by Gene Crucean on 10/1/17.
//  Copyright © 2017 Gene Crucean. All rights reserved.
//

import UIKit

/// Prints a json compatible string... instead of that square bracket swift garbage :D
/// - parameter items: The object you want to print.
/// - parameter separator: The separator. Optional.
/// - parameter terminator: The terminator. Optional.
/// - parameter prettyPrintURL: `true` returns a url that can be copy pasted into a browser for pretty print. Optional.
/// - returns: Returns a json compatible string... instead of that square bracket swift garbage :D
public func printJSON(_ items: Any..., separator: String = " ", terminator: String = "\n", prettyPrintURL: Bool = false) {
    let output = items.map { (item) -> Any in
        switch item {
        case is Array<Any>:
            if let itemUnwrapped = item as? [Any] {
                let json = try? JSONSerialization.data(withJSONObject: itemUnwrapped, options: [])
                let jsonString = String(data: json ?? Data(), encoding: String.Encoding.utf8) ?? ""
                if prettyPrintURL {
                    print("------------------------------ printJSON ------------------------------")
                    print("Copy and paste this into a browser for pretty print + linting")
                    return "https://jsonlint.com/?json=\(jsonString)"
                }
                else {
                    return "\(jsonString)"
                }
            }
            
            return item
        case is Dictionary<String, Any>:
            if let itemUnwrapped = item as? [String: Any] {
                let json = try? JSONSerialization.data(withJSONObject: itemUnwrapped, options: [])
                let jsonString = String(data: json ?? Data(), encoding: String.Encoding.utf8) ?? ""
                if prettyPrintURL {
                    print("------------------------------ printJSON ------------------------------")
                    print("Copy and paste this into a browser for pretty print + linting")
                    return "https://jsonlint.com/?json=\(jsonString)"
                }
                else {
                    return "\(jsonString)"
                }
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
