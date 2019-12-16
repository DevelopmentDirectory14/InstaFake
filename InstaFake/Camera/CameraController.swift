//
//  CameraController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/16/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit
import AVFoundation

class CameraController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCaptureSession()
    }
    
    fileprivate func setupCaptureSession() {
        let captureSession = AVCaptureSession()
        
        //1. setup inputs
        guard let captureDevice = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            if captureSession.canAddInput(input) {
                captureSession.addInput(input)
            }
        } catch let err {
            print("Could not setup camera input:", err)
        }
        
        //2. setup outputs
        
        //3. setup output preview
    }
    
}
