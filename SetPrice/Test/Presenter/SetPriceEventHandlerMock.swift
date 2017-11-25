import UIKit
@testable import YourApp

class SetPriceEventHandlerMock {
    
}

extension SetPriceEventHandlerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension SetPriceEventHandlerMock: SetPriceEventHandlerProtocol {
    
}
