//
//  OnBoardingViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 05/05/22.
//

import UIKit

class OnBoardingViewController: UIViewController, CoordinatorBoard {

    // MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    // MARK: - Instance variable
    var onBoardingViewController: AppCoordinator?
    var currentPage = 0
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarTintColor()
    }
    
    // MARK: - IBActions
    @IBAction func skipButtonClicked(_ sender: UIButton) {
        onBoardingViewController?.goToWelcomeScreen()
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        currentPage += 1
        if (currentPage >=  OnBoardingData.onBoardingData.count) {
            onBoardingViewController?.goToWelcomeScreen()
        } else {
            let indexPath = IndexPath(item: currentPage, section: 0)
            pageControl.currentPage = currentPage
            collectionView.isPagingEnabled = false
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            collectionView.isPagingEnabled = true
        }
    }
    
    // MARK: - Functions
    /// function to change background of navigationbar
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
}

// MARK: Extension collectionview comforming data source
extension OnBoardingViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OnBoardingData.onBoardingData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       return OnBoardingCell.initData(collectionView: collectionView, indexPath: indexPath)
    }
    
}

//MARK: - Extension COmforming CollextionviewDelegateflowlayout
extension  OnBoardingViewController: UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width =  scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
    
}
