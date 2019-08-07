import UIKit
@testable import YourApp

class ConnectionOverviewPresenterMock {

}

extension ConnectionOverviewPresenterMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionOverviewPresenterMock: ConnectionOverviewPresenterProtocol {

}
