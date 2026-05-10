/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image(information.image).resizable()
                
                HomeView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
