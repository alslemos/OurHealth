import SwiftUI

struct Screen02: View {
    var body: some View {
        NavigationStack(){
            GeometryReader{ reader in
                NavigationLink(destination: Screen03(), label: {
                    VStack(alignment: .center){

                        // Configurando colunas
                        HStack(spacing: reader.size.height * 0.00){
                                    
                                // Coluna um
                                ZStack{
                                    Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)) 
                                    
                                        Image("icones")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: reader.size.height * 0.2)
                                }.ignoresSafeArea()
                            
                            
                            ZStack{
                                Color(UIColor(red: 0.15, green: 0.51, blue: 0.84, alpha: 1.00)) 
                                
                            
                                VStack(alignment: .leading){
                                    Text("For you, what is Health?")
                                        .font(.largeTitle.bold())
                                        .foregroundColor(.white)
                                    
                                    Text("You might think on:")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                    
                                    Text("• Not having diseases")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(.white)
                                    
                                    Text("• Not having a body with limitations")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(.white)
                                    
                                    Text("• Being able to sleep well at night")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(.white)
                                    
                                    Text(" But you know that health has more meanings?")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                    NavigationLink{
                                        Screen03()
                                    } label: {
                                        Text("Tap for more")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                            .padding()
                                            .foregroundColor(Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255))
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [ Color(red: 119 / 255, green: 222 / 255, blue: 255 / 255),  Color(red: 66 / 255, green: 187 / 255, blue: 255 / 255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            )
                                            .cornerRadius(30)
                                        
                                    }.shadow(color: Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255), radius: 5, x: 5, y: 5)
                                        .padding(.horizontal)
                                        .padding(.top)
                                }
                            }.ignoresSafeArea()
                            }
                        }
                })}
        }   
    }                       
}
