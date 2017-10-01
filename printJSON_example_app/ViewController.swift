//
//  ViewController.swift
//  printJSON_example_app
//
//  Created by Gene Crucean on 10/1/17.
//  Copyright © 2017 Gene Crucean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrrrayMatey: [Any] = ["name1", "name 2", "Name3", 4, true, 1.023160, ["subDict": 9.8]]
        let dict: [String: Any] = ["subDict": arrrrayMatey]
        let dictMain: [String: Any] = ["foo": "bar", "someInt": 7, "someBool": true, "anotherDictionary": dict]
        print("=========== Typical print ============")
        print(dictMain)
        print("=========== JSON print ============")
        printJSON(dictMain)
        
        // Uncomment for some more examples of how it handles different data types.
//        print("=========== JSON print - Array ============")
//        printJSON(arrrrayMatey)
//        print("=========== JSON print - Misc ============")
//        printJSON("Here are some tests with different data types... as this utility was designed mostly for dictionaries and arrays convertable to JSON.")
//        printJSON(65454)
//        print(412.423423)
//        print(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

