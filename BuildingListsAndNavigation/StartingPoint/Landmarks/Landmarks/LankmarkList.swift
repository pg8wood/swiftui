//
//  LankmarkList.swift
//  Landmarks
//
//  Created by Patrick Gatewood on 6/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LankmarkList : View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail()) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmaks"))
        }
    }
}

#if DEBUG
struct LankmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LankmarkList()
    }
}
#endif
