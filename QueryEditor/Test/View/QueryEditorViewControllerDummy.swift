import UIKit
@testable import YourApp

class QueryEditorViewControllerDummy {

}

extension QueryEditorViewControllerDummy: QueryEditorViewControllerProtocol {

	var eventHandler: QueryEditorEventHandlerProtocol {
		get {
			return QueryEditorEventHandlerDummy()
		}
	}

	var viewModel: QueryEditorViewModel {
		get {
            let viewModel = QueryEditorViewModel()
            return viewModel
		}
		set {

		}
	}
}