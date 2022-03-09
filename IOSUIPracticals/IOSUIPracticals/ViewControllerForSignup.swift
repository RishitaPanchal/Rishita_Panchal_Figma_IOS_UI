//
//  ViewControllerForSignup.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 01/03/22.
//

import UIKit

class ViewControllerForSignup: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: IBActions
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var imageAction: UIButton!
    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var errorPassword: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var errorEmail: UIButton!
    @IBOutlet weak var maleBtn: UIButton!
    @IBOutlet weak var femaleBtn: UIButton!

    @IBOutlet var radioBtn: UIView!
    @IBOutlet weak var txtView: UITextView!
    
    //MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        txtView.textColor = .gray
        txtView.text = "BIO"
        txtView.delegate = self
        self.txtView.layer.borderColor = UIColor.gray.cgColor
        self.txtView.layer.borderWidth = 1
        self.progressView.setProgress(0.0, animated: true)

    }
    
    //Profile picture
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageHolder.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)

    }
    
    // MARK: IBActions
    @IBAction func chooseAnImage(_ sender: UIButton) {
        let myPickerController =  UIImagePickerController()
        myPickerController.delegate = self
        myPickerController.sourceType = .photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    @IBAction func slider(_ sender: UISlider) {
        age.text = String(Int(sender.value))
    }
   
    //Validation
    @IBAction func signup(_ sender: UIButton) {
        if email.text == "" {
            errorMsg.text = "Email feild should not be emoty!!"
            errorEmail.setImage(UIImage(named: "Error.png"), for: .normal)
        }
        
        if password.text == "" {
            errorMsg.text = "Password Feild should not be empty!!"
            errorPassword.setImage(UIImage(named: "Error.png"), for: .normal)
        }
        
        if password.text != "" && email.text != "" {
            errorMsg.text = ""
            errorEmail.setImage(UIImage(named: "right.png"), for: .normal)
            errorPassword.setImage(UIImage(named: "right.png"), for: .normal)
            self.progressView.setProgress(0.0, animated: false)
            
            DispatchQueue.global().async {
               for i in 0...100 {
                   let prog = Float(i) / 100
                   usleep(20000)
                   DispatchQueue.main.async { () -> Void in
                     self.progressView.setProgress(prog, animated: true)
                   }
               }
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0 ) {
                if self.progressView.progress == 1.0 {
                    self.errorMsg.text = "Success"
                } else {
                    self.errorMsg.text = "Erroe"
                }
            }
        }
    
    }
    
    //Radio buttons
    @IBAction func male(_ sender: UIButton) {
        maleBtn.setImage(UIImage(named: "radio_on.png"), for: .normal)
        femaleBtn.setImage(UIImage(named: "radio_off.png"), for: .normal)
    }
    
    @IBAction func female(_ sender: UIButton) {
        femaleBtn.setImage(UIImage(named: "radio_on.png"), for: .normal)
        maleBtn.setImage(UIImage(named: "radio_off.png"), for: .normal)
    }
    
}

extension ViewControllerForSignup: UITextViewDelegate {
    
    func textViewDidBeginEditing (_ textView: UITextView) {
        if txtView.text.isEmpty || txtView.text == "BIO" {
            txtView.text = nil
            txtView.textColor = .lightGray
        }
    }
    func textViewDidEndEditing (_ textView: UITextView) {
        if txtView.text.isEmpty {
            txtView.textColor = UIColor.gray
            txtView.text =  "BIO"
        }
    }
    
}

