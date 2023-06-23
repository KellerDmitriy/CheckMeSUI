//
//  ContentView.swift
//  CheckMeSUI
//
//  Created by Келлер Дмитрий on 20.06.2023.
//

import SwiftUI

struct GameView: View {

    @StateObject private var gameViewModel = GameViewModel()

    var body: some View {
        VStack(spacing: 35) {
            GameSliderView(gameViewModel: gameViewModel, color: .red)
            
            Button("Проверь меня!", action: gameViewModel.showAlert)
                .padding()
                .alert(
                    "Ваш счёт:",
                    isPresented: $gameViewModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(gameViewModel.scores)
            }
            
            Button("Начать заново", action: gameViewModel.reset)
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        GameView()
    }
}

