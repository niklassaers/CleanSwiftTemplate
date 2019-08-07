import SwiftUI

struct ConnectionSplitViewView : View {
    
    @ObjectBinding var viewModel: ConnectionSplitViewViewModel
    @State var isExecuting: Bool = false
    
    var eventHandler: ConnectionSplitViewEventHandlerProtocol
    
    init(viewModel: ConnectionSplitViewViewModel) {
        print("did init ConnectionSplitViewView")
        self.viewModel = viewModel
        self.eventHandler = ConnectionSplitViewPresenter(viewModel: viewModel)
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

extension ConnectionSplitViewView: ConnectionSplitViewViewProtocol {
}

#if DEBUG
struct ConnectionSplitViewView_Previews : PreviewProvider {
    static var viewModel = ConnectionSplitViewViewModel()
    static var previews: some View {
        ConnectionSplitViewView(viewModel: viewModel)
    }
}
#endif

