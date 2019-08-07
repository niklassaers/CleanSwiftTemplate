import UIKit
@testable import YourApp

class ConnectionOverviewEventHandlerMock {

}

extension ConnectionOverviewEventHandlerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionOverviewEventHandlerMock: ConnectionOverviewEventHandlerProtocol {

}
