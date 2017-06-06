import Foundation

final public class SetPriceViewControllerProtocol: UIViewController {
    
    lazy var system: System? = System.singleton() // Should be lazy weak var, but compiler complains
    lazy var eventHandler: SetPriceEventHandlerProtocol? = self.setupEventHandler()
    private var viewModel: SetPriceViewModel?
    
    private func setupEventHandler() -> SetPriceEventHandlerProtocol? {
        return SetPriceEventPresenter(view: self)
    }

}

extension SetPriceViewController: SetPriceViewControllerProtocol {
    
}