import UIKit
@testable import YourApp

class ConnectionSplitViewEventHandlerMock {

}

extension ConnectionSplitViewEventHandlerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionSplitViewEventHandlerMock: ConnectionSplitViewEventHandlerProtocol {

}
