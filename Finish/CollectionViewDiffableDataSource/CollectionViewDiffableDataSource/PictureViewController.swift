//
//  PictureViewController.swift
//  CollectionViewDiffableDataSource
//
//  Created by Thanathip Kumnarai on 2/5/2563 BE.
//  Copyright © 2563 Thanathip Kumnarai. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private var pictureList = Picture.all
    private var searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.initialSearchBar()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    func initialSearchBar() {
        searchController.searchBar.placeholder = "ค้นหาที่นี่"
        navigationItem.searchController = searchController
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
    }
    
}

extension PictureViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictureList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let picture = pictureList[indexPath.row]
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? PictureCollectionViewCell else {
            fatalError()
        }
        cell.picture = picture
        return cell
    }

}

extension PictureViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        pictureList = filterPictureFromSearch(with: searchController.searchBar.text)
        collectionView.reloadData()
    }
    
    func filterPictureFromSearch(with keyword: String?) -> [Picture] {
        let pictures = Picture.all
        guard let query = keyword, !query.isEmpty else {
            return pictures
        }
        
        return pictures.filter {
            return $0.title.contains(query)
        }
    }
}
