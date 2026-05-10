/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct RecipeView: View {
    var selectedList: [String]
    var body: some View {
        VStack {ScrollView {
            Text("Recipes that matches your items!")
                .font(.largeTitle)
                .fontWeight(.bold)
          
                .padding()
            Text("Selected items:")
            Text(selectedList.joined(separator: ","))
            HStack{
                if selectedList.contains("Rice") && selectedList.contains("Eggs"){
                    GroupBox {
                        Image(information.EggFriedRice).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button("Egg Fried Rice") {
                            
                        }
                    }.padding()
                }
                if !selectedList.contains("Rice") && selectedList.contains("Eggs"){
                 
                }
                
            }
            HStack{
                if selectedList.contains("Tomato") && selectedList.contains("Lettuce") && selectedList.contains("Carrot"){
                    GroupBox {
                        Image(information.VegetableSalad).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button("Vegetable Salad") {
                        }
                    }.padding()
                }
                if !selectedList.contains("Tomato") && selectedList.contains("Lettuce") && selectedList.contains("Carrot"){
                    
                }
                
            }


            NavigationLink("Proceed", destination: StepsView(selRec: selectedList.contains("Rice") ? "Rice" : "Tomato")).padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50)).foregroundColor(.white).font(.largeTitle.bold()).background(.orange).cornerRadius(30)

            
            
        }
        }
        .padding([.top, .bottom], 50)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(selectedList: [])
    }
}
