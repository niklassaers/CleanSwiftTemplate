import UIKit
@testable import YourApp

class SetPriceEntityGatewayMock {

}

extension SetPriceEntityGatewayMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension SetPriceEntityGatewayMock: SetPriceEntityGatewayProtocol {

}
