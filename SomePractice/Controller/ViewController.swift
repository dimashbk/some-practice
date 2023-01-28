//
//  ViewController.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit
import SnapKit
import Alamofire
class ViewController: UIViewController {
    private var photos = [Photo]()
    let sessionConf = URLSessionConfiguration.default
    let session = URLSession.shared
    let decoder = JSONDecoder()
    var myTableView = UITableView()
    let url = "https://jsonplaceholder.typicode.com/photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.identifier)
        myTableView.frame = view.bounds
        view.addSubview(myTableView)
        setConstraints()
        
        
    }
    
    private func setConstraints() {
        myTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func fetchData(){
        AF.request(self.url , method: .get).responseDecodable(of: [Photo].self){ [weak self] response in
            self?.photos = response.value ?? []
            self?.myTableView.reloadData()
            
        }
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let itemCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as? MyTableViewCell{
                    itemCell.photo = self.photos[indexPath.row]
                    return itemCell
        }
        
        return UITableViewCell()
    }
}
    
    
    

