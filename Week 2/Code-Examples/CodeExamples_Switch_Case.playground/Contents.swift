import Cocoa
//: Playground - noun: a place where people can play

//Listing 1.1  Your first switch
///* ...

var statusCode: Int = 404
var errorString: String?

switch statusCode {
case 400:
    errorString = "Bad request"
    
case 401:
    errorString = "Unauthorized"
    
case 403:
    errorString = "Forbidden"
    
case 404:
    errorString = "Not found"
    
default:
    errorString = "None"
}
//... */

//Listing 1.2  Switch cases can have multiple values
/*..

 var statusCode: Int = 404
 var errorString: String = "The request failed with the error:"
 switch statusCode {
 
 case 400, 401, 403, 404:
 errorString = "There was something wrong with the request."
 fallthrough
 default:
 errorString += " Please review the request and try again."
 }
 ...*/

//Listing 1.3  Switch cases can have single values, multiple values, or ranges of values
/*...
 import Cocoa
 var statusCode: Int = 404
 var errorString:String = "Message: "
 switch statusCode {
 case 100, 101:
 errorString += " Informational, 1xx."
 
 case 204:
 errorString += " Successful but no content, 204."
 
 case 300...307:
 errorString += " Redirection, 3xx."
 
 case 400...417:
 errorString += " Client error, 4xx."
 
 case 500...505:
 errorString += " Server error, 5xx."
 
 default:
 errorString = "Unknown. Please review the request and try again."
 }
 ...*/

//Listing 1.4  Using value binding
/*..
 import Cocoa
 var statusCode: Int = 404
 var errorString:String = "Message: "
 
 switch statusCode {
 case 100, 101:
 errorString += " Informational, \(statusCode)."
 
 case 204:
 errorString += " Successful but no content, 204."
 
 case 300...307:
 errorString += " Redirection, \(statusCode)."
 
 case 400...417:
 errorString += " Client error, \(statusCode)."
 
 case 500...505:
 errorString += " Server error, \(statusCode)."
 
 case let unknownCode:
 errorString = "\(unknownCode) is not a known error code."
 
 }
 ..*/

//Listing 1.5  Using where clause to create a filter

/*...
 import Cocoa
 
 var statusCode: Int = 200
 var errorString: String = "The request failed with the error:"
 switch statusCode {
 case 100, 101:
 errorString += " Informational, \(statusCode)."
 
 case 204:
 errorString += " Successful but no content, 204."
 
 case 300...307:
 errorString += " Redirection, \(statusCode)."
 
 case 400...417:
 errorString += " Client error, \(statusCode)."
 
 case 500...505:
 errorString += " Server error, \(statusCode)."
 
 case let unknownCode where (unknownCode >= 205 && unknownCode < 300)
 || unknownCode > 505:
 errorString = "\(unknownCode) is not a known error code."
 
 default:
 errorString = "Unexpected error encountered."
 }
 ...*/


