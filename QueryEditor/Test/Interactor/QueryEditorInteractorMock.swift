import UIKit
@testable import YourApp

class QueryEditorInteractorMock {

}

extension QueryEditorInteractorMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension QueryEditorInteractorMock: QueryEditorInteractorProtocol {

}
