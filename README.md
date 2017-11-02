# printJSON()

## This pod is an alternative to print() for dictionary's and array's to get proper json. 

This came about from constantly needing to copy and paste output from objects at work for other departements. In my experience, when you send non-Apple devs the output direct from print(someDictionary|someArray), it confuses them a bit. This makes it faster and easier to quickly print some data and send.

### Known limitations
* Does not pretty print yet. Until this is added, feel free to use jsonlint.com. Even easier is to use the `prettyPrintURL:` param. Eg: `printJSON(someDictionary, prettyPrintURL: true)`. It's a hack until I can write proper pretty print, deal with it ;)
* It was built with dictionary's and array's in mind. Other data types get wrapped into json for now. Test this with the included sample project.


## Typical print from Swift's Standard Library "print()":
```swift
["someBool": true, "anotherDictionary": ["subDict": ["name1", "name 2", "Name3", 4, true, 1.0231600000000001, ["subDict": 9.8000000000000007]]], "foo": "bar", "someInt": 7]
```

## Printed using printJSON():
```swift
{"someBool":true,"anotherDictionary":{"subDict":["name1","name 2","Name3",4,true,1.0231600000000001,{"subDict":9.8000000000000007}]},"foo":"bar","someInt":7}
```





## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ sudo gem install cocoapods
```

To integrate printJSON into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'printJSON', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate printJSON into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "crewshin/printJSON" ~> 1.0
```

Run `carthage update` to build the framework and drag the built `printJSON.framework` into your Xcode project.


## License

printJSON is released under the MIT license. [See LICENSE](https://github.com/crewshin/printJSON/blob/master/LICENSE) for details.

