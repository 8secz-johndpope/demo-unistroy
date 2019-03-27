
import UIKit

class CatalogViewController: UIViewController {
    
    
    
    @IBOutlet weak var handleArea: UIView!
    @IBOutlet weak var mebelLabel: UILabel!
    @IBOutlet weak var textureLabel: UILabel!
    
    
    private var furnitureCollectionView = FurnitureCollectionView()
    private var textureCollectionView = TextureCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //        add furniture
        
        view.addSubview(furnitureCollectionView)
        furnitureCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        furnitureCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        furnitureCollectionView.topAnchor.constraint(equalTo: mebelLabel.bottomAnchor, constant: 0).isActive = true
        furnitureCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        furnitureCollectionView.set(cells: CardModel.fetchCard())
        
        //        add textures
        
        
        view.addSubview(textureCollectionView)
        textureCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        textureCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        textureCollectionView.topAnchor.constraint(equalTo: textureLabel.bottomAnchor, constant: 0).isActive = true
        textureCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        textureCollectionView.set(cells: CardModel.fetcTexture())
        
    }
}
