import SwiftUI

struct Screen01: View {

    var body: some View {
        
        NavigationStack(){
            GeometryReader{ reader in
                NavigationLink(destination: Screen02(), label: {
                    ZStack{
                        Color(UIColor(red: 0.15, green: 0.51, blue: 0.84, alpha: 1.00)) 
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: reader.size.height * 0.01){
                            
                            Image("novoLogo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: reader.size.height * 0.4)
                            
                            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: reader.size.height * 0.05){
                                
                                Text("Expanding the concepts of health")
                                    .font(.title)
                                    .padding()
                                    .foregroundColor(.white)
                            }
                            
                            NavigationLink{
                                Screen02()
                            } label: {
                                VStack {
                                    Text("Start")
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
                })}
        }   
    }                       
}
