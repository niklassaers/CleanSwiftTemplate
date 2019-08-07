import UIKit
@testable import YourApp

class QueryEditorEventHandlerMock {

}

extension QueryEditorEventHandlerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension QueryEditorEventHandlerMock: QueryEditorEventHandlerProtocol {

}
