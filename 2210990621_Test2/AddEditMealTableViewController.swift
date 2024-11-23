//
//  AddEditMealTableViewController.swift
//  2210990621_Test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class AddEditMealTableViewController: UITableViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    @IBOutlet weak var uploadImageView: UIImageView!
    var meals: [Meal] = [Meal(recipeName: "Pizza", calorieCount: 500, preperationTime: 50),
    Meal(recipeName: "Dhokla", calorieCount: 300, preperationTime: 20)]
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func uploadButtonTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate =  self
        
        let alertController = UIAlertController(title: "Choose Image src", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
       if UIImagePickerController.isSourceTypeAvailable(.camera){
           let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: {
               action in print("User has selected camera")
               imagePicker.sourceType = .camera
               self.present(imagePicker,animated: true,completion: nil)})
            alertController.addAction(cameraAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction=UIAlertAction(title: "Photo Library", style: .default, handler: {
                action in print("User has selected photo Library")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker,animated: true,completion: nil )
            })
            alertController.addAction(photoLibraryAction)
        }
        present(alertController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker:UIImagePickerController,didFinishPickingMediaWithInfo
info: [UIImagePickerController.InfoKey :  Any]){
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        uploadImageView.image =  selectedImage
        dismiss(animated: true, completion: nil)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
