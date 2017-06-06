import Foundation

final class SetPriceConnector {
    
    lazy var system: System? = System.singleton() // Should be lazy weak var, but compiler complains

    init() {
        
    }

}

extension SetPriceConnector: SetPriceConnectorProtocol {
    
}