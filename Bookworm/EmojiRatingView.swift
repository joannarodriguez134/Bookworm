//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Joanna Rodriguez on 8/1/24.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int16
    var body: some View {
        switch rating {
        case 1:
            return Text("☹️")
            
        case 2:
            return Text("😕")
            
        case 3:
            return Text("😄")
            
        case 4:
            return Text("😁")
            
        default:
            return Text("🤩")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 4)
}
