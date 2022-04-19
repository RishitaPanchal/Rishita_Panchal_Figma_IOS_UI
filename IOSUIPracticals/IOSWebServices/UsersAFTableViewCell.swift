import UIKit

class UsersAFTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var imgViewAvatar: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    
    // MARK: Fuction for Load data
    func loadData(_ listUser: UITableView, _ userDetails: [User], _ indexPath: IndexPath) -> UITableViewCell {
        let cell = listUser.dequeueReusableCell(withIdentifier: "UsersDemo") as! UsersAFTableViewCell
        cell.lblFullName.text = userDetails[indexPath.row].firstName
        cell.lblEmail.text = userDetails[indexPath.row].email
        let url = URL(string: userDetails[indexPath.row].avatar)
        let data = try? Data(contentsOf: url!)
        cell.imgViewAvatar.image = UIImage(data: data!)
        return cell
    }
    
}
