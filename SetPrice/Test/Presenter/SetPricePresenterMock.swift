import UIKit
@testable import YourApp

class SetPricePresenterMock {

}

extension SetPricePresenterMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension SetPricePresenterMock: SetPricePresenterProtocol {

}
