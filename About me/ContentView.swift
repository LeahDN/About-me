//
//  ContentView.swift
//  About me
//
//  Created by Scholar on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var Info = " "
    @State var Info2 = " "
    @State var Info3 = " "
    @State var photo = "Famliy photo"
    @State var num = 1
    var body: some View {
        
        ZStack{
            Color(hue: 0.126, saturation: 0.073, brightness: 1.0)
                .cornerRadius(20)
                .shadow(radius: 15)
                .padding(.all)

            VStack{
                Text("Leah Niebuhr")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.512, saturation: 0.46, brightness: 0.691))
                Image(photo)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 310.0, height: 300.0)
                    .cornerRadius(50.0)
                    .padding([.leading, .bottom, .trailing], 30.0)
                    
                HStack(alignment: .top){
                    Button("General") {
                       Info = "Age = 14"
                       Info2 = "School = Orchard Farm"
                       Info3 = "Sister = Lora"
                    }
                    .padding(.horizontal)
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                
                    Button("Favorites") {
                        Info = "Color = Yellow"
                        Info2 = "Hobby = Art"
                        Info3 = "Hobby2 = Hikeing"
                    }
                    .padding(.horizontal)
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    
                    Button("Pets") {
                        Info = "Cat = Rey"
                        Info2 = "Bird = Calyipso"
                        Info3 = "Lizard = Missy"
                    }
                    .padding([.leading, .bottom, .trailing])
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                
                }
                
                Text(Info)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.512,saturation: 0.46, brightness: 0.691))
                Text(Info2)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.512,saturation: 0.46, brightness: 0.691))
                Text(Info3)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.512,saturation: 0.46, brightness: 0.691))
                    .padding(.bottom)
                Button("Picture") {
                    if num == 3 {
                        num = 0
                    }
                    num = num+1
                    if num == 1 {
                        photo = "Famliy photo"
                    } else if num == 2 {
                        photo = "About me pichture"
                    } else {
                        photo = "Cat"
                    }
                    
                }
                .padding(.all)
                .buttonStyle(.borderedProminent)
                .tint(.orange)

            //hue: 0.512, saturation: 0.46, brightness: 0.691
            //hue: 0.121, saturation: 0.766, brightness: 0.939
                
            }
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
