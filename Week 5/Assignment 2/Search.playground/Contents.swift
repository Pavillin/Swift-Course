import Cocoa

func search<T>(values: [T], value: T) -> String{
    if(values.contains(where: T)){
        return print("Element found")
    }else{
        return print("Element not found")
    }
}

let dblAndInt = [1, 2, 3, 4, 5, 6, 7, 1.1, 2.2, 3.3, 4.4]
