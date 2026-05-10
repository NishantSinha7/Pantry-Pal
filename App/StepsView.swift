/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct StepsView: View {

    @State private var funFact = ""
    @State var selRec : String
    var body: some View {
        VStack {
            if selRec == "Rice"{
                GroupBox {
                    VStack{
                        Image(information.EggFriedRice).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button("Egg Fried Rice") {
                        }
                        
                        HStack{
                            Text("Ingredients: cooked rice, Eggs, Green onions, Salt,Oil")
                                .padding()
                            Spacer()
                        }
                        
                        
                        Text("Instructions:Cooking Rice:Use day-old cooked rice for best results.Preparing Eggs:Beat eggs with salt and scramble in a pan.Making Fried Rice:Heat oil in a wok, add aromatics (like ginger and garlic), vegetables, and seasonings.Add cooked rice and toss well.Mix in the scrambled eggs and green onions.Serve hot.")
                            .padding()
                    }.padding().frame(width: 400,height: 500) 
                } 
            }
            
            else{
                GroupBox {
                    VStack{
                        Image(information.VegetableSalad).resizable().frame(maxWidth: 10,maxHeight: 190)
                        Button("Vegetable Salad") {
                        }
                        
                        HStack{
                            Text("Ingredients: 2 cups chopped romaine lettuce,1 cup grated carrots,1 cup cherry tomatoes, halved,2 tablespoons extra-virgin olive oil,1 tablespoon red wine vinegar,Salt and pepper to taste")
                                .padding()
                            Spacer()
                        }
                        
                        
                        Text("Instructions: In a large bowl, combine the chopped romaine lettuce, grated carrots, and cherry tomatoes. In a small bowl, whisk together the olive oil and red wine vinegar to make the dressing. Pour the dressing over the salad and toss to combine. Season with salt and pepper to taste.")
                            .padding()
                    }.padding().frame(width: 400,height: 600)
                }
            }
            
//           NavigationLink("Done", destination: R).padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50)).foregroundColor(.white).font(.largeTitle.bold()).background(.orange).cornerRadius(30)     
        }
        .padding()
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView(selRec: "")
    }
}
