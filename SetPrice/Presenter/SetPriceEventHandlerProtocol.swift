import UIKit

protocol SetPriceEventHandlerProtocol: class {

    func prepare(for segue: UIStoryboardSegue)
    func willAppear(withPresentationModel: SetPricePresentationModel)
}
