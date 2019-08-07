import UIKit
@testable import YourApp

class QueryEditorPresenterMock {

}

extension QueryEditorPresenterMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension QueryEditorPresenterMock: QueryEditorPresenterProtocol {

}
