//
//  GameSliderView.swift
//  CheckMeSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct GameSliderView: View {
    @ObservedObject var  gameViewModel: GameViewModel
    var color: UIColor
    
    var body: some View {
        VStack {
            let targetValue = gameViewModel.gameOptions.targetValue
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                UISliderRepresentation(
                    value: $gameViewModel.gameOptions.currentValue,
                    alpha: gameViewModel.alpha,
                    color: color
                )
                Text("100")
            }
            .padding()
        }
    }
}

struct GameSliverView_Previews: PreviewProvider {
    static var previews: some View {
        GameSliderView(gameViewModel: GameViewModel(), color: .red)
    }
}
