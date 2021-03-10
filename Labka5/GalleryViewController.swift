//
//  GalleryViewController.swift
//  Labka5
//
//  Created by Saltanat Nareshova on 09.03.2021.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var aboutUs: UIButton!
    @IBOutlet weak var faculties: UIButton!
    @IBOutlet weak var News: UIButton!
    @IBOutlet weak var galleryPhoto: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutUs.addTarget(self, action: #selector(about_us), for: .touchUpInside)
        aboutUs.layer.cornerRadius = 5
        faculties.addTarget(self, action: #selector(faculty), for: .touchUpInside)
        faculties.layer.cornerRadius = 5
        News.layer.cornerRadius = 5
        galleryPhoto.layer.cornerRadius = 5
    }
    @objc func about_us(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "ViewController") as! ViewController
        self.present(controller, animated: true, completion: nil)
    }
    @objc func faculty(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller2 = story.instantiateViewController(identifier: "TableViewController") as! TableViewController
        self.present(controller2, animated: true, completion: nil)
    }
}
