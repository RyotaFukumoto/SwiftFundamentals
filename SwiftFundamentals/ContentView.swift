//
//  ContentView.swift
//  SwiftFundamentals
//
//  Created by ryota on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    // @Stateをつけると、変数の値が変わったときに画面が更新される
    @State private var count = 0
    var body: some View {
        VStack {
            Text("カウント: \(count)")
                .font(.largeTitle)
            Button(action: {
                // ボタンが押されるたびにカウントを1増やす
                self.count += 1
            }) {
                Text("カウントアップ")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
