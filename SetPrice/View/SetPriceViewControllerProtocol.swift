import Foundation

protocol SetPriceViewControllerProtocol: class {

	var eventHandler: SetPriceEventHandlerProtocol { get }
	var viewModel: SetPriceViewModel? { get set }
}
