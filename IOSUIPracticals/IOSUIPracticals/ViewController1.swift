import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var txtView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   //     changeColor(txtFeild: txtView, loc: 23, length: 7)
    }
    
    func changeColor(txtFeild: UILabel, loc: Int, length: Int) {
        let myString: NSString = txtFeild.text! as NSString
        var myMutableString = NSMutableAttributedString()
       
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Arial", size: 16.0)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location: loc,length: length))
        txtFeild.attributedText = myMutableString
    }
    
}
