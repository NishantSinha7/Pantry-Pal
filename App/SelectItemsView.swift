/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct SelectItemsView: View {
    
    @State var selectedItems: [String]
    var body: some View {
        VStack {
            Text("Select your food items !")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
            
            Text("Items Selected:\n \(selectedItems.joined(separator: ","))").multilineTextAlignment(.center)
            
            ScrollView{
                
                HStack{
                    GroupBox{
                        Image(information.rice).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Rice")){
                                selectedItems.append("Rice")
                            }
                        }, label: {
                            Text("Rice")
                        })
                    }.padding()
                    
                    
                    GroupBox{
                        Image(information.tomato).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Tomato")){
                                selectedItems.append("Tomato")
                            }
                        }, label: {
                            Text("Tomato")
                        })

                    }.padding()
                }
                HStack{
                    GroupBox{
                        Image(information.eggs).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Eggs")){
                                selectedItems.append("Eggs")
                            }
                        }, label: {
                            Text("Eggs")
                        })
                        
                    }.padding()
                    
                    GroupBox{
                        Image(information.jam).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Jam")){
                                selectedItems.append("Jam")
                            }
                        }, label: {
                            Text("Jam")
                        })
                        

                    }.padding()
                }
                
//                    GroupBox{
//                        Image(information.cheese).resizable().frame(maxWidth: 190,maxHeight: 190)
//                        Button(action: {
//                            if(!selectedItems.contains("Cheese")){
//                                selectedItems.append("Cheese")
//                            }
//                        }, label: {
//                            Text("Cheese")
//                        })
//
//                    }.padding()
                HStack{
                    GroupBox{
                        Image(information.lettuce).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Lettuce")){
                                selectedItems.append("Lettuce")
                            }
                            
                        }, label: {
                            Text("Lettuce")
                        })
                        
                    }.padding()
                    
                    GroupBox{
                        Image(information.carrot).resizable().frame(maxWidth: 190,maxHeight: 190)
                        Button(action: {
                            if(!selectedItems.contains("Carrot")){
                                selectedItems.append("Carrot")
                            }
                        }, label: {
                            Text("Carrot")
                        })
                        
                    }.padding()
                }
                    
//                    GroupBox{
//                        Image(information.bread).resizable().frame(maxWidth: 190,maxHeight: 190)
//                        Button(action: {
//                            if(!selectedItems.contains("Bread")){
//                                selectedItems.append("Bread")
//                            }
//                        }, label: {
//                            Text("Bread")
//                        })
//                        
//
//                    }.padding()
                
                
                NavigationLink("Proceed", destination: RecipeView(selectedList: selectedItems)).padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50)).foregroundColor(.white).font(.largeTitle.bold()).background(.orange).cornerRadius(30)
            }

        }
    }
}

struct SelectItemsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectItemsView(selectedItems: [])
    }
}
