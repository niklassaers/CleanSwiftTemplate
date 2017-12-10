import UIKit
@testable import YourApp

class SetPriceInteractorMock {

}

extension SetPriceInteractorMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension SetPriceInteractorMock: SetPriceInteractorProtocol {

}
