//
//  AssetSectionView.swift
//  MyAsset
//
//  Created by 오승준 on 2022/07/14.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    var body: some View {
        VStack(spacing: 20){
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack{
                    Text(asset.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(
            id: 0,
            type:.bankAccount,
            data: [
            AssetData(id: 0, title: "신한은행", amount: "5,300,000원"),
            AssetData(id: 1, title: "국민은행", amount: "12,325,300,000원"),
            AssetData(id: 2, title: "카카오뱅크", amount: "511,300,000원")
              ]
        )
        AssetSectionView(assetSection: asset)
    }
}
