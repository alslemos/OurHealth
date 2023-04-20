import SwiftUI

struct Screen04: View {
    
    var body: some View {
        
        NavigationStack(){
            GeometryReader{ reader in
                NavigationLink(destination: Screen05(), label: {
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
                                
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: reader.size.height * 0.02){
                                    
                                    Text("The environment has an important role in our health: it affects the quality of the air we breathe, the water we drink, the food we eat.")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(.white)
                                    
                                    Text("The impact of the environment on human health leads us to concepts like \"planetary health\" and \"one health\". Those concepts help identify how we can improve human health by taking care of our cities, fields, and even the animals around the world!")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(.white)   
                                    
                                    NavigationLink{
                                        Screen05()
                                    } label: {
                                        Text("Tap for more")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                            .padding()
                                            .foregroundColor(Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255))
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [ Color(red: 119 / 255, green: 222 / 255, blue: 255 / 255),  Color(red: 66 / 255, green: 187 / 255, blue: 255 / 255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ).cornerRadius(30)
                                        
                                    }.shadow(color: Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255), radius: 5, x: 5, y: 5)
                                    
                                }
                            }.ignoresSafeArea()
                        }
                    } 
                })}
        }   
    }                       
}

