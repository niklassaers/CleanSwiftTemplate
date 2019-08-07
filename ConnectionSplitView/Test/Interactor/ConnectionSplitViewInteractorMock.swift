import UIKit
@testable import YourApp

class ConnectionSplitViewInteractorMock {

}

extension ConnectionSplitViewInteractorMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionSplitViewInteractorMock: ConnectionSplitViewInteractorProtocol {

}
