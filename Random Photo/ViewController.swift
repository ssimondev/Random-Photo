//
//  ViewController.swift
//  Random Photo
//
//  Created by Simon on 3/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        imageView.center = view.center
        view.addSubview(button)
        getRandomPhoto()
    }
    
    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/600x600"
        let url = URL(string: urlString)!
        guard let data =  try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
}

