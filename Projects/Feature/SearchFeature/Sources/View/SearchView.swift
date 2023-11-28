import SwiftUI

struct SearchView: View {
    @StateObject private var searchViewModel: SearchViewModel
    
    var body: some View {
        VStack {
        }
    }
    
    init(searchViewModel: SearchViewModel) {
        self._searchViewModel = StateObject(
            wrappedValue: searchViewModel
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchViewModel: SearchViewModel())
    }
}
