//
//  MainViewController.swift
//  CarHelper
//
//  Created by Artur Gedakyan on 04.11.2021.
//

import UIKit

class MainViewController: UIViewController {

    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setupViewModel(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
}
