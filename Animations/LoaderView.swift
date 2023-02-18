//
//  LoaderView.swift
//  Animations
//
//  Created by Edgar Macias on 18/02/23.
//
import UIKit
import Lottie

class LoaderView: UIView {
    
    let name:String!
    
    init(frame: CGRect,name:String) {
        self.name = name
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        let animationView = LottieAnimationView(name:self.name)
        animationView.frame = CGRect (x: 0, y: 0, width: 400, height: self.bounds.height)
        animationView.center=self.center
        animationView.animationSpeed=0.2
        animationView.contentMode = .scaleAspectFit
        self.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints=false
        animationView.centerXAnchor.constraint(equalTo:centerXAnchor).isActive=true
        animationView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive=true
        animationView.widthAnchor.constraint(equalToConstant:280).isActive=true
        animationView.heightAnchor.constraint(equalToConstant:108).isActive = true
    }
}
