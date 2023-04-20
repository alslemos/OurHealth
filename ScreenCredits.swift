import SwiftUI

struct Credits: View {
    
    var body: some View {
        
        NavigationStack(){
            GeometryReader{ reader in
                NavigationLink(destination: Screen01(), label: {
                    ZStack{
                        Color(UIColor(red: 0.15, green: 0.51, blue: 0.84, alpha: 1.00)) 
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                            
                            VStack(){
                                
                            Text("Thank you for your time!")
                                .font(.title.bold())
                                .padding()
                                .foregroundColor(.white)
                            

                            Image("MomPicture")
                                .resizable()
                                .imageScale(.medium)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 500, height: 500, alignment: .center)
                            
                            
                            Text("This app, besides a educational idea, is also a thank you to my mother, Renata Lemos.")
                                .font(.title2)
                                .padding()
                                .foregroundColor(.white)
                            
                            Text("As a mother and a teacher, she has always used puzzles as a tool to learn and teach.")
                                .font(.title2)
                                .padding()
                                .foregroundColor(.white)
                            
                            }
                            
                            VStack(){
                                
                                
                                Text("Thank you for enjoying it! ")
                                    .font(.title.bold())
                                    .padding()
                                    .foregroundColor(.white)
                                
                                
                                Text("To Learn more about global, and environment health, check the WHO website! ")
                                    .font(.title2)
                                    .padding()
                                    .foregroundColor(.white)
                                
                                Text("The images used on this project were designed or made by Alexandre Lemos da Silva. One of them, the icon pattern was licensed for personal use. The sounds are from the Pixabay sound repository and are free of copyright.")
                                    .font(.footnote)
                                    .padding()
                                    .foregroundColor(.white)
                                
                                NavigationLink{
                                    Screen01()
                                } label: {
                                    VStack {
                                        Text("Restart")
                                            .font(.custom("", size: 50.0))
                                            .padding()
                                            .foregroundColor(Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255))
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [ Color(red: 119 / 255, green: 222 / 255, blue: 255 / 255),  Color(red: 66 / 255, green: 187 / 255, blue: 255 / 255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            )
                                            .cornerRadius(30)
                                        
                                    }.shadow(color: Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255), radius: 5, x: 5, y: 5)
                                } 
                            }
                        }
                        
                    }.navigationBarBackButtonHidden(true)
                })}
        }   
    }                       
}
