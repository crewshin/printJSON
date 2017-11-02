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
        
        // Uncomment this to get a ready to copy/pasta into a web browser.
//        printJSON(dictMain, prettyPrintURL: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

