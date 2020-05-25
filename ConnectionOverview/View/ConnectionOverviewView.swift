import SwiftUI

struct ConnectionOverviewView : View {
    
    @ObservedObject var viewModel: ConnectionOverviewViewModel
    
    var eventHandler: ConnectionOverviewEventHandlerProtocol
    
    init(viewModel: ConnectionOverviewViewModel, eventHandler: ConnectionOverviewEventHandlerProtocol) {
        self.viewModel = viewModel
        self.eventHandler = eventHandler
    }
	
	
    var body: some View {
		Text("Replace me")
    }
}

extension ConnectionOverviewView: ConnectionOverviewViewProtocol {
}

#if DEBUG
struct ConnectionOverviewView_Previews : PreviewProvider {

    static var previews: some View {
        let viewModel = ConnectionOverviewViewModel()
        let eventHandler = ConnectionOverviewPresenter(viewModel: viewModel)
        return ConnectionOverviewView(viewModel: viewModel, eventHandler: eventHandler)
    }
}
#endif

