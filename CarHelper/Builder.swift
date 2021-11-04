//
//  Builder.swift
//  CarHelper
//
//  Created by Artur Gedakyan on 04.11.2021.
//

import UIKit

protocol AssemblyModuleProtocol {
    func createMovieVC() -> UIViewController
}

final class AssemblyModule: AssemblyModuleProtocol {
    func createMovieVC() -> UIViewController {
        let viewModel = MainViewModel()
        let vc = MainViewController()
        vc.setupViewModel(viewModel: viewModel)
        return vc
    }

}
