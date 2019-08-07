import UIKit
@testable import YourApp

class ConnectionSplitViewPresenterMock {

}

extension ConnectionSplitViewPresenterMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionSplitViewPresenterMock: ConnectionSplitViewPresenterProtocol {

}
