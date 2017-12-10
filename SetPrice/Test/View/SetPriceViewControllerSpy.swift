import UIKit
@testable import YourApp

class SetPriceViewControllerSpy {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension SetPriceViewControllerSpy: SetPriceViewControllerProtocol {

	var eventHandler: SetPriceEventHandlerProtocol {
		get {
			getEventHandlerCalled = true
			return SetPriceEventHandlerDummy()
		}
	}

	var viewModel: SetPriceViewModel? {
		get {
			getViewModelCalled = true
			return nil
		}
		set {
			setViewModelCalled = true
		}
	}
}
