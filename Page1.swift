import SpriteKit
var MyBackgroundColor = UIColor(red: 0.15, green: 0.51, blue: 0.84, alpha: 1.00)

open class MyPieces: SKScene {
    var messagemAlterada: String = "objeto"
    
    private var valueBar: Int = 0 {
        didSet {
            createLoading()
        }
    }
    
    private var valueText: Int = 0 {
        didSet {
            createTip()
        }
    }
    
    var firstTime = true // firstPlay
    
    var refPeace: SKSpriteNode = SKSpriteNode()
    var piece1: SKSpriteNode = SKSpriteNode()  
    var piece2: SKSpriteNode = SKSpriteNode()  
    var piece3: SKSpriteNode = SKSpriteNode()  
    var piece4: SKSpriteNode = SKSpriteNode()
    var piece5: SKSpriteNode = SKSpriteNode()
    var piece6: SKSpriteNode = SKSpriteNode()
    var piece7: SKSpriteNode = SKSpriteNode()
    var piece8: SKSpriteNode = SKSpriteNode()
    var piece9: SKSpriteNode = SKSpriteNode()
    var piece10: SKSpriteNode = SKSpriteNode()
    var piece11: SKSpriteNode = SKSpriteNode()
    var piece12: SKSpriteNode = SKSpriteNode()
    var piece13: SKSpriteNode = SKSpriteNode()
    var piece14: SKSpriteNode = SKSpriteNode() 
    var piece15: SKSpriteNode = SKSpriteNode()
    var piece16: SKSpriteNode = SKSpriteNode()
    var piece17: SKSpriteNode = SKSpriteNode()
    var piece18: SKSpriteNode = SKSpriteNode()
    
    var piece8Alt: SKSpriteNode = SKSpriteNode()
    var piece10Alt: SKSpriteNode = SKSpriteNode()
    var piece12Alt: SKSpriteNode = SKSpriteNode()
    var piece13Alt: SKSpriteNode = SKSpriteNode()
    var piece18Alt: SKSpriteNode = SKSpriteNode()
    
    var borderPiece: SKSpriteNode = SKSpriteNode()
    var sectionPiece: SKSpriteNode = SKSpriteNode()
    var loadingBar: SKSpriteNode = SKSpriteNode()
    var tipsBar: SKSpriteNode = SKSpriteNode()
    var sectionOrder: SKSpriteNode = SKSpriteNode()
    
    // declaracao dos estados das peças especiais 
    var especialPeace8 = false
    var especialPeace10 = false
    var especialPeace12 = false
    var especialPeace13 = false
    var especialPeace18 = false
    
    // array of pieces
    var pieces: [SKSpriteNode] = [] 
    
    // movableNode
    var movableNode = SKNode()
    
    // touchOffSet zero
    var touchOffset: CGPoint = CGPoint.zero
    
    open func playSound(){
        let click = SKAudioNode(fileNamed: "ClickSounAlexandrePlayground")
        click.run(SKAction.changeVolume(to: Float(0.1), duration: 0))
        click.run(.play())
        self.addChild(click)
    }
    
    
    
    // didMove
    open override func didMove(to view: SKView) {
        self.backgroundColor = MyBackgroundColor
        
        self.view?.ignoresSiblingOrder = true
        createPiece1()
        createPiece2()
        createPiece3()
        createPiece4()
        createPiece5()
        createPiece6()
        createPiece7()
        createPiece8()
        createPiece9()
        createPiece10()
        createPiece11()
        createPiece12()
        createPiece13()
        createPiece14()
        createPiece15()
        createPiece16()
        createPiece17()
        createPiece18()
        
        createPiece8Alternativo()
        createPiece10Alternativo()
        createPiece12Alternativo()
        createPiece13Alternativo()
        createPiece18Alternativo()
        
        createBorder()
        createSection()
        createLoading()
        createTextOrder()
        
        createTip()
        self.pieces = [piece1,piece2,piece3,piece4,piece5,piece6,piece7,piece8,piece9,piece10,piece11,piece12,piece13,piece14,piece15,piece16,piece17,piece18]
        
    }
    
    // p1   
    open func createPiece1(){
        piece1 = SKSpriteNode(imageNamed: "1")
        piece1.setScale(0.8)
        piece1.position = CGPoint(x:250 ,y:800)
        self.piece1.zPosition = 1
        self.addChild(piece1)
    }
    
    // p2
    open func createPiece2(){
        piece2 = SKSpriteNode(imageNamed: "2")
        piece2.setScale(0.8)
        piece2.position = CGPoint(x:413,y:817)
        self.piece2.zPosition = 1
        self.addChild(piece2)
    }
    
    // p3
    open func createPiece3(){
        piece3 = SKSpriteNode(imageNamed: "3")
        piece3.setScale(0.8)
        piece3.position = CGPoint(x:558, y:817)
        self.piece3.zPosition = 1
        self.addChild(piece3)
    }
    
    // p4
    open func createPiece4(){
        piece4 = SKSpriteNode(imageNamed: "4")
        piece4.setScale(0.8)
        piece4.position = CGPoint(x:720 ,y:817)
        self.piece4.zPosition = 1
        self.addChild(piece4)
    }
    
    // p5
    open func createPiece5(){
        piece5 = SKSpriteNode(imageNamed: "5")
        piece5.setScale(0.8)
        piece5.position = CGPoint(x:900 ,y:817)
        self.piece5.zPosition = 1
        self.addChild(piece5)
    }
    
    // p6
    open func createPiece6(){
        piece6 = SKSpriteNode(imageNamed: "6")
        piece6.setScale(0.8)
        piece6.position = CGPoint(x:1045 ,y:817)
        self.piece6.zPosition = 1
        self.addChild(piece6)
    }
    // p7
    open func createPiece7(){
        piece7 = SKSpriteNode(imageNamed: "7")
        piece7.setScale(0.8)
        piece7.position = CGPoint(x:250 ,y:638)
        self.piece7.zPosition = 1
        self.addChild(piece7)
    }
    // p8
    open func createPiece8(){
        piece8 = SKSpriteNode(imageNamed: "8")
        piece8.name = "move"
        piece8.setScale(0.6)
        piece8.position = CGPoint(x:420 ,y:255) //especial piece
        self.piece8.zPosition = 2
        self.addChild(piece8)
        // (x:240 ,y:270)
    }
    // p9
    open func createPiece9(){
        piece9 = SKSpriteNode(imageNamed: "9")
        piece9.setScale(0.8)
        piece9.position = CGPoint(x:558 ,y:673)
        self.piece9.zPosition = 1
        self.addChild(piece9)
        
    }
    // p10
    open func createPiece10(){
        piece10 = SKSpriteNode(imageNamed: "10")
        piece10.name = "move"
        piece10.setScale(0.6)
        piece10.position = CGPoint(x:610 ,y:270) //x:400 ,y:255)
        self.piece10.zPosition = 2
        self.addChild(piece10)
    }
    // p11
    open func createPiece11(){
        piece11 = SKSpriteNode(imageNamed: "11")
        piece11.setScale(0.8)
        piece11.position = CGPoint(x:900 ,y:673)
        self.piece11.zPosition = 1
        self.addChild(piece11)
    }
    // p12
    open func createPiece12(){
        piece12 = SKSpriteNode(imageNamed: "12") 
        piece12.name = "move"
        piece12.setScale(0.6)
        piece12.position = CGPoint(x:800 ,y:270) //x:400 ,y:255)
        self.piece12.zPosition = 1
        self.addChild(piece12)
    }
    // p13
    open func createPiece13(){
        piece13 = SKSpriteNode(imageNamed: "13")
        piece13.name = "move"
        piece13.setScale(0.6)
        piece13.position = CGPoint(x:1000 ,y:260) //x:580 ,y:300)
        self.piece13.zPosition = 2
        self.addChild(piece13)
    }
    // p14
    open func createPiece14(){
        piece14 = SKSpriteNode(imageNamed: "14")
        piece14.setScale(0.8)
        piece14.position = CGPoint(x:395 ,y:494)
        self.piece14.zPosition = 1
        self.addChild(piece14)
    }
    // p15
    open func createPiece15(){
        piece15 = SKSpriteNode(imageNamed: "15")
        piece15.setScale(0.8)
        piece15.position = CGPoint(x:558 ,y:512)
        self.piece15.zPosition = 1
        self.addChild(piece15)
    }
    // p16
    open func createPiece16(){
        piece16 = SKSpriteNode(imageNamed: "16")
        piece16.setScale(0.8)
        piece16.position = CGPoint(x:738 ,y:512)
        self.piece16.zPosition = 1
        self.addChild(piece16)
    }
    // p17
    open func createPiece17(){
        piece17 = SKSpriteNode(imageNamed: "17")
        piece17.setScale(0.8)
        piece17.position = CGPoint(x:900 ,y:512) 
        self.piece17.zPosition = 1
        self.addChild(piece17)
    }
    // p18
    open func createPiece18(){
        piece18 = SKSpriteNode(imageNamed: "18")
        piece18.name = "move"
        piece18.setScale(0.6)
        piece18.position = CGPoint(x:240 ,y:270)// (x:980 ,y:290) //
        self.piece18.zPosition = 3
        self.addChild(piece18)
    }
    
    // pAlt8 
    open func createPiece8Alternativo(){
        piece8Alt = SKSpriteNode(imageNamed: "8alt")
        piece8Alt.setScale(0.8)
        piece8Alt.position = CGPoint(x: 412.5 ,y:655.5) //especial piece
        self.piece8Alt.zPosition = 1
        self.addChild(piece8Alt)
    }
    
    // pAlt10
    open func createPiece10Alternativo(){
        piece10Alt = SKSpriteNode(imageNamed: "10alt")
        
        piece10Alt.setScale(0.8)
        piece10Alt.position = CGPoint(x:720 ,y:673) //especial piece
        self.piece10Alt.zPosition = 1
        self.addChild(piece10Alt)
    }
    
    // pAlt12
    open func createPiece12Alternativo(){
        piece12Alt = SKSpriteNode(imageNamed: "12alt")
        
        piece12Alt.setScale(0.8)
        piece12Alt.position = CGPoint(x:1045 ,y:673) //especial piece
        self.piece12Alt.zPosition = 1
        self.addChild(piece12Alt)
    }
    
    // pAlt13
    open func createPiece13Alternativo(){
        piece13Alt = SKSpriteNode(imageNamed: "13alt")
        piece13Alt.setScale(0.8)
        piece13Alt.position = CGPoint(x:250 ,y:494) //especial piece
        self.piece13Alt.zPosition = 1
        self.addChild(piece13Alt)
    }
    
    // pAlt18
    open func createPiece18Alternativo(){
        piece18Alt = SKSpriteNode(imageNamed: "18alt")
        piece18Alt.setScale(0.8)
        piece18Alt.position = CGPoint(x:1043 ,y:512) //especial piece
        self.piece18Alt.zPosition = 1
        self.addChild(piece18Alt)
    }
    
    // borderPeace
    open func createBorder(){
        
        sectionPiece = SKSpriteNode(imageNamed: "contQC")
        sectionPiece.setScale(0.93)
        sectionPiece.position = CGPoint(x: 640, y: 655)
        
        self.borderPiece.zPosition = 0
        self.addChild(sectionPiece)
    }
    
    // section
    open func createSection(){
        sectionPiece = SKSpriteNode(imageNamed: "Unica")
        sectionPiece.setScale(0.9)
        sectionPiece.position = CGPoint(x: 640, y: 260)
        self.sectionPiece.zPosition = 0
        self.addChild(sectionPiece)
    }
    
    open func createTextOrder(){
        sectionOrder = SKSpriteNode(imageNamed: "order")
        sectionOrder.setScale(0.9)
        sectionOrder.position = CGPoint(x: 640, y: 950)
        self.sectionPiece.zPosition = 0
        self.addChild(sectionOrder)
    }
    
    
    open func createLoading(){
        loadingBar = SKSpriteNode(imageNamed: "20P")
        
        switch(valueBar){
            
        case 20:
            loadingBar = SKSpriteNode(imageNamed: "20P")
        case 40:
            loadingBar = SKSpriteNode(imageNamed: "40P")
        case 60:
            loadingBar = SKSpriteNode(imageNamed: "60P")
        case 80:
            loadingBar = SKSpriteNode(imageNamed: "80P")
        case 100:
            loadingBar = SKSpriteNode(imageNamed: "100P")
        default:
            loadingBar = SKSpriteNode(imageNamed: "LoadingBar")
        }
        loadingBar.setScale(0.6)
        loadingBar.position = CGPoint(x:1350 ,y:405) 
        self.loadingBar.zPosition = 1
        self.addChild(loadingBar)
    }
    
    open func createTip(){
        switch(valueText){
            
        case 1:
            
            tipsBar = SKSpriteNode(imageNamed: "LogCard1")
        case 2:
            
            tipsBar = SKSpriteNode(imageNamed: "LogCard2")
        case 3:
           
            tipsBar = SKSpriteNode(imageNamed: "LogCard3")
        case 4:
           
            tipsBar = SKSpriteNode(imageNamed: "LogCard4")
        case 5:
            
            tipsBar = SKSpriteNode(imageNamed: "LogCard5")
        default:
          
            tipsBar = SKSpriteNode(imageNamed: "LogCard")
        }
    
        tipsBar.setScale(0.9)
        tipsBar.position = CGPoint(x:1335 ,y:810) 
        self.tipsBar.zPosition = 1
        self.addChild(tipsBar)
    }
    
    
    open func verifyTouch(touch: UITouch){       // funcao de verificao de toque 
        let location = touch.location(in: self)   
    
        var node: SKNode
        for i in stride(from: 0, to: pieces.count, by: 1) {
            
            node = pieces[i]
            
            let xMin = (node.position.x - 100)
            let xMax = (node.position.x + 100)
            let yMin = (node.position.y - 100)
            let yMax = (node.position.y + 100)
            
            if ((location.x >= xMin && location.x <= xMax) && (location.y >= yMin && location.y <= yMax)) {
                
                if node.contains(location) && node.name == "move"{
                    
                    node.zPosition+=23
                    
                    movableNode = node
                    movableNode.position = location
                    node.setScale(0.8)
                    
                    //node tá sendo clicado
                    if(i == 7){
                        refPeace = piece8Alt
                        
                    }
                    
                    else if(i == 9){
                        refPeace = piece10Alt
                        
                    }
                    
                    else if(i == 11){
                        refPeace = piece12Alt
                        
                    }
                    
                    else if(i == 12){
                        refPeace = piece13Alt
                    }
                    
                    else if(i == 17){
                        refPeace = piece18Alt
                    }
                    
                    
                    if ((node.position.x >= refPeace.position.x-50 && node.position.x <= refPeace.position.x+50) && (node.position.y >= refPeace.position.y-50 && node.position.y <= refPeace.position.y+50)) {
                        
                        node.position = CGPoint(x: refPeace.position.x, y: refPeace.position.y)
                        
                        if(i == 7){
                           
                            especialPeace8 = true
                            valueBar = valueBar + 20
                            valueText = 1 
                            node.run(SKAction.playSoundFileNamed("ClickSounAlexandrePlayground", waitForCompletion: true))
                        }
                        
                        else if(i == 9){
                            
                            especialPeace10 = true
                            valueBar = valueBar + 20
                            valueText = 2 
                            node.run(SKAction.playSoundFileNamed("ClickSounAlexandrePlayground", waitForCompletion: false))
                        }
                        
                        else if(i == 11){
                          
                            especialPeace12 = true
                            valueBar = valueBar + 20
                            valueText = 3 
                            node.run(SKAction.playSoundFileNamed("ClickSounAlexandrePlayground", waitForCompletion: false))
                        }
                        
                        else if(i == 12){
                         
                            especialPeace13 = true
                            valueBar = valueBar + 20
                            valueText = 4 
                            node.run(SKAction.playSoundFileNamed("ClickSounAlexandrePlayground", waitForCompletion: false))   
                        }
                        
                        else if(i == 17){
                                                       
                            especialPeace18 = true
                            valueBar = valueBar + 20
                            valueText = 5 
                            node.run(SKAction.playSoundFileNamed("ClickSounAlexandrePlayground", waitForCompletion: false))
                        }
                        verificaVitoria()
                    }
                }
            }
        }
    }
    
    open func verificaVitoria(){
        if((especialPeace18 == true) && (especialPeace13 == true) && (especialPeace12 == true) && (especialPeace10 == true) && (especialPeace8 == true)){
            
            run(SKAction.playSoundFileNamed("tada", waitForCompletion: false))
        }
    }                        
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!
        let location = touch.location(in: self)
        
        if let node = self.atPoint(location) as? SKNode {
            if node == movableNode {
                touchOffset = CGPoint(x: movableNode.position.x - location.x, y: movableNode.position.y - location.y)
                verifyTouch(touch: touch)    
            }
        }        
        verifyTouch(touch: touch)
        
    }
    
    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
        if movableNode.contains(location) {
            movableNode.position = CGPoint(x: location.x + touchOffset.x, y: location.y + touchOffset.y)
        }
    }
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
        if movableNode.contains(location) {
            movableNode.position = CGPoint(x: location.x + touchOffset.x, y: location.y + touchOffset.y)
        }
        verifyTouch(touch: touch)
    }
    
    open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchOffset = CGPoint.zero
    }   
}
