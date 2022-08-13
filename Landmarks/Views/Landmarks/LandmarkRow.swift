//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Welber Macedo on 11/08/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmarks: Landmark

    var body: some View {
        HStack {
            landmarks.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmarks.name)

            Spacer()
            
            if landmarks.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}	

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmarks: landmarks[0])
            LandmarkRow(landmarks: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
