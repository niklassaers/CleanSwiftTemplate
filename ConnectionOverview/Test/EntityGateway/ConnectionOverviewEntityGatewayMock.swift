import UIKit
@testable import YourApp

class ConnectionOverviewEntityGatewayMock {

}

extension ConnectionOverviewEntityGatewayMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionOverviewEntityGatewayMock: ConnectionOverviewEntityGatewayProtocol {

}
