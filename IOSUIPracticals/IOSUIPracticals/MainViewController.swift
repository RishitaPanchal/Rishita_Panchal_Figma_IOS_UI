//
//  MainViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 11/03/22.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: IBAction
    @IBOutlet weak var tblView: UITableView!
    
    // MARK: Instance variable
    var chapterDetails = MainPageData.topicsData
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
}

// MARK: Tableview datasource method
extension MainViewController: UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        chapterDetails.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapterDetails[section].topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tblView.dequeueReusableCell(withIdentifier: "topicsCell", for: indexPath) as? TableViewTopicCell else {
            return UITableViewCell()
        }
        cell.topicTitle.text = chapterDetails[indexPath.section].topics[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return chapterDetails[section].chapterTitle
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segId = chapterDetails[indexPath.section].topics[indexPath.row].segId
        performSegue(withIdentifier: segId, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}

extension MainViewController: UITableViewDelegate {
    
}
