import SwiftUI

struct ConnectionOverviewView : View {
    
    @ObservedObject var viewModel: ConnectionOverviewViewModel
    @State var isExecuting: Bool = false
    
    var eventHandler: ConnectionOverviewEventHandlerProtocol
    
    init(viewModel: ConnectionOverviewViewModel) {
        print("did init ConnectionOverviewView")
        self.viewModel = viewModel
        self.eventHandler = ConnectionOverviewPresenter(viewModel: viewModel)
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Favorites") ) {
                    ForEach(viewModel.favouriteNodes) { node in
                        NodeRow(viewModel: node)
                    }
                    .onDelete(perform: deleteFavorite)
                }
                Section(header: Text("Test") ) {
                    Toggle(isOn: self.$isExecuting) {
                        Text("Hello world")
                    }
                    Button(action: {
                        self.eventHandler.doSomething()
                    }) {
                        Text("The button")
                    }
                }
            }
            .navigationBarTitle(Text("Overview"))
                .navigationBarItems(trailing: HStack {
                    AddButton()
                    AddButton()
                    }
            )
                .listRowInsets(EdgeInsets())
        }
    }
    
    func deleteFavorite(at offsets: IndexSet) {
        eventHandler.deleteFavorite(at: offsets)
    }
}

extension ConnectionOverviewView: ConnectionOverviewViewProtocol {
}

#if DEBUG
struct ConnectionOverviewView_Previews : PreviewProvider {
    static var viewModel = ConnectionOverviewViewModel()
    static var previews: some View {
        ConnectionOverviewView(viewModel: viewModel)
    }
}
#endif

