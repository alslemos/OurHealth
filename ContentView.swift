import SwiftUI
import SpriteKit
import UIKit

struct GameView: View{
    
    var scene: SKScene{
        let scene = MyPieces()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .aspectFit
        scene.view?.ignoresSiblingOrder = true
        return scene
    }
    
    var body: some View{
        NavigationStack {
            ZStack {
                SpriteView(scene: scene)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.horizontal)
                    .edgesIgnoringSafeArea(.bottom)
                VStack {
                    Spacer()
                    
                    NavigationLink{
                        Credits()
                    } label: {
                        VStack {
                            Text("Credits")
                                .font(.title)
                                .padding()
                                .foregroundColor(Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255))
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [ Color(red: 119 / 255, green: 222 / 255, blue: 255 / 255),  Color(red: 66 / 255, green: 187 / 255, blue: 255 / 255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                                .cornerRadius(30)
                            Spacer()
                                .frame(height: 29)
                            
                        }.shadow(color: Color(red: 16 / 255, green: 28 / 255, blue: 137 / 255), radius: 5, x: 5, y: 5)
                    }
                }
            }
        }
    }
}  
