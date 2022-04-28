//
//  BluetoothLearnView.swift
//  PNGen
//
//  Created by Thomas Arnold on 25.03.22.
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
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.Bluetooth.Risk")).withLearnTextBodyStyle()
                        HStack{
                            Text("1").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp1")).withLearnTextBodyStyle()}
                        HStack{
                            Text("2").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp2")).withLearnTextBodyStyle()}
                        HStack{
                            Text("3").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp3")).withLearnTextBodyStyle()}
                        HStack{
                            Text("4").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Bluetooth.Tipp4")).withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
        
    }
}

