//
//  MainCordinator.swift
//  CarHelper
//
//  Created by Artur Gedakyan on 04.11.2021.
//

import UIKit

/// Cordinator
protocol CordinatorProtocol: AnyObject {
    var childCordinators: [CordinatorProtocol] { get set }
    var navigationController: UINavigationController? { get set }

    func start()
//    func goDescription(model: MovieModel?)
}

/// MainCordinator
class MainCordinator: NSObject, CordinatorProtocol {
    var childCordinators: [CordinatorProtocol] = []

    var navigationController: UINavigationController?
    var builder: AssemblyModule?

    init(navigationController: UINavigationController, builder: AssemblyModule) {
        self.navigationController = navigationController
        self.builder = builder
    }

    func start() {
        if let navigationController = navigationController {
            guard let mainViewController = builder?.createMain(cordinator: self) else { return }
            navigationController.viewControllers = [mainViewController]
        }
    }

//    func goDescription(model: MovieModel?) {
//        if let navigationController = navigationController {
//            guard let detailVc = assemblyBuilder?.createDetailModule(coment: model, cordinator: self) else { return }
//            navigationController.pushViewController(detailVc, animated: true)
//        }
//    }
}
