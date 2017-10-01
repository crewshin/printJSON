## This pod is basically a convenience method to print dictionary's and array's to proper json.

This came about from constantly needing to copy and paste output from objects at work for other departements. In my experience, when you send non-Apple devs the output direct from print(someDictionary), it confuses them a bit. This makes it faster and easier to quickly print some data and send.

### Known limitations
* Does not pretty print yet. Until this is added, feel free to use jsonlint.com.
* It was built with dictionary's and array's in mind. Other data types get wrapped into json for now. Test this with the included sample project.


## Typical print from Swift's Standard Library "print()":
["someBool": true, "anotherDictionary": ["subDict": ["name1", "name 2", "Name3", 4, true, 1.0231600000000001, ["subDict": 9.8000000000000007]]], "foo": "bar", "someInt": 7]

## Printed using printJSON():
{"someBool":true,"anotherDictionary":{"subDict":["name1","name 2","Name3",4,true,1.0231600000000001,{"subDict":9.8000000000000007}]},"foo":"bar","someInt":7}