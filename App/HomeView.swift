/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct HomeView: View {
    @State private var showProgress = false
    
    var body: some View {
        
        VStack {   
            Spacer()
            NavigationLink("Start  🥘", destination: SelectItemsView(selectedItems: [])).padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50)).foregroundColor(.white).font(.largeTitle.bold()).background(.orange).cornerRadius(30)
//            Button("Start  🥘"){
//                showProgress = true
//                
//            }.padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50)).foregroundColor(.white).font(.largeTitle.bold()).background(.orange).cornerRadius(30)
            if showProgress{
                ProgressView().progressViewStyle(.circular)
            }
            Text("").padding()
            Text("").padding()
            Text("").padding()
            Text("").padding()
            
            
            
            
            
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
