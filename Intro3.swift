import SwiftUI

struct Screen03: View {
    
    var body: some View {
        
        NavigationStack(){
            GeometryReader{ reader in
                NavigationLink(destination: Screen04(), label: {
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
                                    Text("Nowadays, the World Health Organization defines health as:")
                                        .font(.largeTitle)
                                        .padding()
                                        .foregroundColor(.white)
                                    
                                    Text("\"Health is a state of complete physical, mental, and social well-being and not merely the absence of disease or infirmity.\"")
                                        .font(.title)
                                        .padding(.all)
                                        .foregroundColor(.white)
                                    
                                    HStack{
                                        Spacer()
                                        
                                        Text(" - World Health Organization")
                                            .font(.footnote)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    
                                    NavigationLink{
                                        Screen04()
                                    } label: {
                                        Text("Tap for more")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                            .padding()
                                            .foregroundColor(Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255))
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [ Color(red: 119 / 255, green: 222 / 255, blue: 255 / 255),  Color(red: 66 / 255, green: 187 / 255, blue: 255 / 255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ).cornerRadius(30)
                                        
                                    }.shadow(color: Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255), radius: 5, x: 5, y: 5)
                                }.padding(.horizontal)
                                    .padding(.top)
                            }.ignoresSafeArea()
                        }
                    } 
                })}
        }   
    }                       
}

