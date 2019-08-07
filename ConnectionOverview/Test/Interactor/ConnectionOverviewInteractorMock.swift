import UIKit
@testable import YourApp

class ConnectionOverviewInteractorMock {

}

extension ConnectionOverviewInteractorMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionOverviewInteractorMock: ConnectionOverviewInteractorProtocol {

}
