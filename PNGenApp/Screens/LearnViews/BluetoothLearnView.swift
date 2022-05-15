//
//  BluetoothLearnView.swift
//  PNGen
//
//  Created by Main Developer on 25.03.22.
//

import SwiftUI

struct BluetoothLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.Bluetooth.Title")).withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.Bluetooth.Body")).withLearnTextBodyStyle()
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.Bluetooth.Risk")).withLearnTextBodyStyle()
                        HStack(alignment: .top){
                            Text("1").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp1")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("2").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp2")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("3").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp3")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("4").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp4")).withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
        
    }
}

