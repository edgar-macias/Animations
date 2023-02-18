//
//  ViewController.swift
//  Animations
//
//  Created by Edgar Macias on 10/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let animationNames = ["clown","cat","guitar"]
    var loaderView: LoaderView?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let segmentedControl = UISegmentedControl (items: self.animationNames)

        segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)

        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        
        segmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)

        self.view.addSubview(segmentedControl)
        
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!){
        self.loaderView?.removeFromSuperview()
        self.loaderView = LoaderView(frame: CGRect(x: 0, y: 200, width:400, height: self.view.bounds.height - 60), name: animationNames[sender.selectedSegmentIndex])
        self.view.addSubview(loaderView!)
    }
    
    

}

