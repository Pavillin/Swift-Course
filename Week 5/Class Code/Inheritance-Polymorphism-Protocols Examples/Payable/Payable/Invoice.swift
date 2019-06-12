// Invoice.java
// Invoice class that adopts the Payable protocol
import Foundation

public class Invoice : Payable {
    let partNumber: String!
    let partDescription: String!
    var quantity: Int!
    var price: NSDecimalNumber!
    
    // initializer
    public init?(partNumber: String, partDescription: String,
        quantity: Int, price: NSDecimalNumber) {
            
        if partNumber.isEmpty || partDescription.isEmpty ||
            quantity < 0 || (price.compare(NSDecimalNumber.zero) ==
                ComparisonResult.orderedAscending) {
            return nil
        }
        
        self.partNumber = partNumber
        self.partDescription = partDescription
        self.quantity = quantity
        self.price = price
    }
    
    // conform to the Payable protocol
    public var paymentAmount: NSDecimalNumber {
        let quantity = NSDecimalNumber(string: self.quantity.description)
        return quantity.multiplying(by: price)
    }
    
    // conform to the protocol
    public var description: String {
        let pricePerItem = NumberFormatter.localizedString(
            from: price, number: .currency)
        return String(format: "%@:\n%@: %@ (%@) \n%@: %d\n%@: %@",
            "Invoice", "Part number", partNumber, partDescription,
            "Quantity", quantity, "Price per item", pricePerItem)
    }
} 

