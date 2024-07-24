//
//  AddInfoAboutCourseVC.swift
//  Courses
//
//  Created by Ибрагимов Эльдар on 18.07.2024.
//

import UIKit

class AddInfoAboutCourseVC: UIViewController {

    @IBOutlet weak var categoryBorder: Border!
    @IBOutlet weak var priceBorder: Border!
    @IBOutlet weak var descriptionBorder: Border!
    @IBOutlet weak var nameBorder: Border!
    @IBOutlet weak var imageBtn: UIButton!
    @IBOutlet weak var pricePred: UILabel!
    @IBOutlet weak var coachPred: UILabel!
    @IBOutlet weak var namePred: UILabel!
    @IBOutlet weak var imagePred: UIImageView!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var descriptionCourse: UITextField!
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        price.delegate = self
        descriptionCourse.delegate = self
        name.delegate = self
        addCoach()
    }
    
    func checkError() -> Bool {
        var result = true
        if name.text!.isEmpty {
            nameBorder.layer.borderColor = UIColor.errorRed.cgColor
            result = false
        }else {
            nameBorder.layer.borderColor = UIColor.lightBlackMain.cgColor
        }
        if price.text!.isEmpty {
            result = false
            priceBorder.layer.borderColor = UIColor.errorRed.cgColor
        }else {
            priceBorder.layer.borderColor = UIColor.lightBlackMain.cgColor
        }
        return result
    }
    
    func addCoach() {
        let coach = UD().getMyInfo()
        coachPred.text = "\(coach.name) \(coach.surname)"
    }
    
    @IBAction func save(_ sender: UIButton) {
        if checkError() {
            performSegue(withIdentifier: "goToAddModule", sender: self)
        }
    }
    
    
    @IBAction func addImage(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        price.resignFirstResponder()
        descriptionCourse.resignFirstResponder()
        name.resignFirstResponder()
        
    }
    
}
extension AddInfoAboutCourseVC: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imagePred.image = image
            dismiss(animated: true)
        }
    }
    
}
extension AddInfoAboutCourseVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == name {
            namePred.text = textField.text
        }else if textField == price {
            pricePred.text = "\(textField.text!)$"
        }
    }
}
