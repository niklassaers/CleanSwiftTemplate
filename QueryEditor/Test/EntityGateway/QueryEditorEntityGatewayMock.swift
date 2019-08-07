import UIKit
@testable import YourApp

class QueryEditorEntityGatewayMock {

}

extension QueryEditorEntityGatewayMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension QueryEditorEntityGatewayMock: QueryEditorEntityGatewayProtocol {

}
