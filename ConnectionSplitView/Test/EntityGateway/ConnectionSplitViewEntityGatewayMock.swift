import UIKit
@testable import YourApp

class ConnectionSplitViewEntityGatewayMock {

}

extension ConnectionSplitViewEntityGatewayMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionSplitViewEntityGatewayMock: ConnectionSplitViewEntityGatewayProtocol {

}
