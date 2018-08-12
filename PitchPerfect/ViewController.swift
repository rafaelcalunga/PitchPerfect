//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Rafael Calunga on 2018-08-09.
//  Copyright © 2018 Rafael Calunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startRecordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordingButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startRecording(_ sender: UIButton) {
        recordingLabel.text = "Recording in Progress"
        startRecordingButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        stopRecordingButton.isEnabled = false
        startRecordingButton.isEnabled = true
        recordingLabel.text = "Tap to record"
    }
    
}
