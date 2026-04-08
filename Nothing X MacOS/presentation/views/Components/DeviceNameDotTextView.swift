//
//  DeviceNameDotTextView.swift
//  Nothing X MacOS
//
//  Created by Arunavo Ray on 15/02/23.
//

import SwiftUI

struct DeviceNameDotTextView: View {
    @StateObject private var viewModel = MainViewViewModel(bluetoothService: BluetoothServiceImpl(), nothingRepository: NothingRepositoryImpl.shared, nothingService: NothingServiceImpl.shared)
    var body: some View {
        VStack {
            Spacer(minLength: 4)
            //name of the device
            Text(viewModel.nothingDevice?.name ?? "ear (a)")
                .font(.custom("5by7", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .rotationEffect(.degrees(-90))
                .padding()
                .fixedSize()
                .frame(width: 14, height: 66)
            
            Spacer(minLength: 150)
                
        }.padding(.horizontal, 8)
    }
}

struct DeviceNameDotTextView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceNameDotTextView()
    }
}
