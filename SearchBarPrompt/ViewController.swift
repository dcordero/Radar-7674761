//
//  ViewController.swift
//  SearchBarPrompt
//
//  Created by David Cordero on 24.04.20.
//  Copyright © 2020 David Cordero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    // MARK: - Private
    
    private lazy var searchContainerViewController: UISearchContainerViewController = {
        return UISearchContainerViewController(searchController: searchController)
    }()
    
    
    private lazy var searchController: UISearchController = {
       let searchController = UISearchController(searchResultsController: searchResultsController)
       searchController.searchBar.prompt = "🔍 Good luck to read me from your sofa"
       return searchController
   }()
    
    private lazy var searchResultsController: UIViewController = {
        return UIViewController()
    }()
    
    private func setUpView() {
        embed(viewController: searchContainerViewController, inContainerView: view)
    }
    
    private func embed(viewController: UIViewController, inContainerView view: UIView) {
        addChild(viewController)
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
}

