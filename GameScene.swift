//
//  GameScene.swift
//  BotaoSpriteKit
//
//  Created by Alcides Junior on 28/03/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    //definindo o botão azul e suas propriedades
    private lazy var blueButton: SKShapeNode = {
        //criando um botão retângulo
        let btn = SKShapeNode(rectOf: CGSize(width: 70, height: 40))
        //posicionando o botão
        btn.position = CGPoint(x: 140, y: 60)
        //definindo a cor para o botão
        btn.fillColor = .blue
        //dando um nome ao botão
        btn.name = "blueButton"
        
        return btn
    }()
    //definindo o botão azul e suas propriedades
    private lazy var redButton: SKShapeNode = {
        //criando um botão retângulo
        let btn = SKShapeNode(rectOf: CGSize(width: 70, height: 40))
        //posicionando o botão
        btn.position = CGPoint(x: 240, y: 60)
        //definindo a cor para o botão
        btn.fillColor = .red
        //dando um nome ao botão
        btn.name = "redButton"
        
        return btn
    }()
    //criando uma board que será o alvo das ações nos botões
    private lazy var board: SKShapeNode = {
        //criando uma board quadrada
        let btn = SKShapeNode(rectOf: CGSize(width: 300, height: 300))
        //posicionando a board no centro da tela
        btn.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
        //definindo uma cor para a board
        btn.fillColor = .white
        //definindo a espessura da borda
        btn.lineWidth = 2
        
        return btn
    }()
    
    
    override func didMove(to view: SKView) {
        //adicionando os elementos na tela
        addChild(blueButton)
        addChild(redButton)
        addChild(board)
    }
    
    func changeBoardColor(color: UIColor){
        self.board.fillColor = color
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //vamos pegar o node que foi atualmente tocado
        let location = touches.first?.location(in: self)
        let currentNode = nodes(at: location!)
        //verificando quem é o node a partir da propriedade NAME
        if currentNode.first?.name == "blueButton"{
            self.changeBoardColor(color: .blue)
            self.blueButton.lineWidth = 8
            self.redButton.lineWidth = 1
        }else if currentNode.first?.name == "redButton"{
            self.changeBoardColor(color: .red)
            self.blueButton.lineWidth = 1
            self.redButton.lineWidth = 8
        }else{
            self.board.fillColor = .white
            self.blueButton.lineWidth = 1
            self.redButton.lineWidth = 1
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
