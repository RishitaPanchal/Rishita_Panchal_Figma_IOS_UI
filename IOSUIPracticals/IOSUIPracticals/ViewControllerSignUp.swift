

import UIKit

class ViewControllerSignUp: UIViewController {

    @IBOutlet weak var txtView2: UILabel!
    @IBOutlet weak var txtPrivacyPolicy: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColortv(txtFeild: txtPrivacyPolicy, locStr1: 29, lenStr1: 18, locStr2: 51, lenStr2: 18)
    }

    func changeColorLabel(txtFeild: UILabel, loc: Int, length: Int) {
        let myString: NSString = txtFeild.text! as NSString
        var myMutableString = NSMutableAttributedString()
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Arial", size: 16.0)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location: loc,length: length))
        txtFeild.attributedText = myMutableString
    }
    
    func changeColortv(txtFeild: UITextView, locStr1: Int, lenStr1: Int, locStr2: Int, lenStr2: Int) {
        let myString: NSString = txtFeild.text! as NSString
        var myMutableString = NSMutableAttributedString()
       
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Arial", size: 16.0)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location: locStr1, length: lenStr1))
        txtFeild.attributedText = myMutableString
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value:  UIColor.blue, range: NSRange(location: locStr2, length: lenStr2))
        txtFeild.attributedText = myMutableString
        txtFeild.textAlignment = .center
    }

}
