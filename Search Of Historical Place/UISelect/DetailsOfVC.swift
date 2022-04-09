import UIKit

class DetailsOfVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    
    var placesTableVieww = [placeModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        data()
        
    }
    
    func data() {
        for data in placesTableVieww {
            nameLabel.text = data.pictureName
            placeName.text = data.artName
            placeImageView.image = data.dateimage
        }
    }
}
