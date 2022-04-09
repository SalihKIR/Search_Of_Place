import UIKit

class PlaceCell: UITableViewCell {

    @IBOutlet weak var placeCellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
    }
    func setImage (image : String) {
        placeCellLabel.text = image
        
    }
}
extension PlaceCell {
      static var identifier: String {
            return String(describing: self)
        }
        
        static var nibName: UINib {
            return UINib(nibName: identifier, bundle: nil)
        }
}
