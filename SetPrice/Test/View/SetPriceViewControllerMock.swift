import UIKit
@testable import YourApp

class SetPriceViewControllerMock {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension SetPriceViewControllerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension SetPriceViewControllerMock: SetPriceViewControllerProtocol {

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
