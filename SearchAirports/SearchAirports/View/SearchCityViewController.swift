//
//  ViewController.swift
//  SearchAirports
//
//  Created by Александр Воробей on 14.04.2024.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class SearchCityViewController: UIViewController, Storyboardable {

    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel = viewModelBuilder((searchText: searchTextField.rx.text.orEmpty.asDriver(), ()))
        self.title = "Airports"
    }


}

