import Cocoa

var intAndDbl = [1, 2, 3, 4, 1.1, 2.2, 3.3, 4.4]
public func Search<T : Comparable>( values: [T], valueToFind: T ) -> String {
    for value in values {
        if(valueToFind == value){
            return "Element found";
        }
    }
    return "Element not found";
}

print(Search(values: intAndDbl, valueToFind: 10));
print(Search(values: intAndDbl, valueToFind: 1));
print(Search(values: intAndDbl, valueToFind: 1.1));
