import UIKit

class DetailsOfVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    
    var placesTableVieww: placeModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data()
        
    }
    
    func data() {
            nameLabel.text = placesTableVieww.pictureName
            placeName.text = placesTableVieww.artName
            placeImageView.image = placesTableVieww.dateimage
        }
}
