//----------------------//----------------------
import UIKit
//----------------------//----------------------
class ViewController: UIViewController {
    //---
    @IBOutlet weak var slot_1: UIImageView!
    @IBOutlet weak var slot_2: UIImageView!
    @IBOutlet weak var slot_3: UIImageView!
    @IBOutlet weak var slot_4: UIImageView!
    @IBOutlet weak var slot_5: UIImageView!
    
    //---
    //carreau
    var card_1ca: UIImage!
    var card_2ca: UIImage!
    var card_3ca: UIImage!
    var card_4ca: UIImage!
    var card_5ca: UIImage!
    var card_6ca: UIImage!
    var card_7ca: UIImage!
    var card_8ca: UIImage!
    var card_9ca: UIImage!
    var card_10ca: UIImage!
    var card_Jca: UIImage!
    var card_Qca: UIImage!
    var card_Kca: UIImage!
    
    //coeur
    var card_1co: UIImage!
    var card_2co: UIImage!
    var card_3co: UIImage!
    var card_4co: UIImage!
    var card_5co: UIImage!
    var card_6co: UIImage!
    var card_7co: UIImage!
    var card_8co: UIImage!
    var card_9co: UIImage!
    var card_10co: UIImage!
    var card_Jco: UIImage!
    var card_Qco: UIImage!
    var card_Kco: UIImage!
    
    //pique
    var card_1pi: UIImage!
    var card_2pi: UIImage!
    var card_3pi: UIImage!
    var card_4pi: UIImage!
    var card_5pi: UIImage!
    var card_6pi: UIImage!
    var card_7pi: UIImage!
    var card_8pi: UIImage!
    var card_9pi: UIImage!
    var card_10pi: UIImage!
    var card_Jpi: UIImage!
    var card_Qpi: UIImage!
    var card_Kpi: UIImage!
    
    //trefle
    var card_1tr: UIImage!
    var card_2tr: UIImage!
    var card_3tr: UIImage!
    var card_4tr: UIImage!
    var card_5tr: UIImage!
    var card_6tr: UIImage!
    var card_7tr: UIImage!
    var card_8tr: UIImage!
    var card_9tr: UIImage!
    var card_10tr: UIImage!
    var card_Jtr: UIImage!
    var card_Qtr: UIImage!
    var card_Ktr: UIImage!

    //---
    var arrOfCardImages: [UIImage]!
    //---
    var arrOfSlotImageViews: [UIImageView]!
    //------------------------------------------
    override func viewDidLoad() {
        //---
        super.viewDidLoad()
        //---
        createCardObjectsFromImages()
        //---
        fillUpArrays()
        //---
        prepareAnimations(duration: 0.2,
                          repeating: 5,
                          cards: arrOfCardImages)
        //---
        stylizeSlotImageViews(radius: 10,
                              borderWidth: 1,
                              borderColor: UIColor.red.cgColor,
                              bgColor: UIColor.yellow.cgColor)
        //---
    }
    //------------------------------------------
    func stylizeSlotImageViews(radius r: CGFloat,
                               borderWidth w: CGFloat,
                               borderColor c: CGColor,
                               bgColor g: CGColor) {
        
        for slotImageView in arrOfSlotImageViews {
            slotImageView.clipsToBounds = true
            slotImageView.layer.cornerRadius = r
            slotImageView.layer.borderWidth = w
            slotImageView.layer.borderColor = c
            slotImageView.layer.backgroundColor = g
        }
    }
    //------------------------------------------
    func fillUpArrays() {
        arrOfCardImages = [card_1ca, card_2ca, card_3ca, card_4ca, card_5ca, card_6ca, card_7ca, card_8ca, card_9ca, card_10ca, card_Jca, card_Qca, card_Kca, card_1co, card_2co, card_3co, card_4co, card_5co, card_6co, card_7co, card_8co, card_9co, card_10co, card_Jco, card_Qco, card_Kco, card_1pi, card_2pi, card_3pi, card_4pi, card_5pi, card_6pi, card_7pi, card_8pi, card_9pi, card_10pi, card_Jpi, card_Qpi, card_Kpi, card_1tr, card_2tr, card_3tr, card_4tr, card_5tr, card_6tr, card_7tr, card_8tr, card_9tr, card_10tr, card_Jtr, card_Qtr, card_Ktr]
        arrOfSlotImageViews = [slot_1, slot_2, slot_3, slot_4, slot_5]
    }
    //------------------------------------------
    func createCardObjectsFromImages() {
        card_1ca = UIImage(named: "1ca.png")
        card_2ca = UIImage(named: "2ca.png")
        card_3ca = UIImage(named: "3ca.png")
        card_4ca = UIImage(named: "4ca.png")
        card_5ca = UIImage(named: "5ca.png")
        card_6ca = UIImage(named: "6ca.png")
        card_7ca = UIImage(named: "7ca.png")
        card_8ca = UIImage(named: "8ca.png")
        card_9ca = UIImage(named: "9ca.png")
        card_10ca = UIImage(named: "10ca.png")
        card_Jca = UIImage(named: "Jca.png")
        card_Qca = UIImage(named: "Qca.png")
        card_Kca = UIImage(named: "Kca.png")
        
        card_1co = UIImage(named: "1co.png")
        card_2co = UIImage(named: "2co.png")
        card_3co = UIImage(named: "3co.png")
        card_4co = UIImage(named: "4co.png")
        card_5co = UIImage(named: "5co.png")
        card_6co = UIImage(named: "6co.png")
        card_7co = UIImage(named: "7co.png")
        card_8co = UIImage(named: "8co.png")
        card_9co = UIImage(named: "9co.png")
        card_10co = UIImage(named: "10co.png")
        card_Jco = UIImage(named: "Jco.png")
        card_Qco = UIImage(named: "Qco.png")
        card_Kco = UIImage(named: "Kco.png")
        
        card_1pi = UIImage(named: "1pi.png")
        card_2pi = UIImage(named: "2pi.png")
        card_3pi = UIImage(named: "3pi.png")
        card_4pi = UIImage(named: "4pi.png")
        card_5pi = UIImage(named: "5pi.png")
        card_6pi = UIImage(named: "6pi.png")
        card_7pi = UIImage(named: "7pi.png")
        card_8pi = UIImage(named: "8pi.png")
        card_9pi = UIImage(named: "9pi.png")
        card_10pi = UIImage(named: "10pi.png")
        card_Jpi = UIImage(named: "Jpi.png")
        card_Qpi = UIImage(named: "Qpi.png")
        card_Kpi = UIImage(named: "Kpi.png")
        
        card_1tr = UIImage(named: "1tr.png")
        card_2tr = UIImage(named: "2tr.png")
        card_3tr = UIImage(named: "3tr.png")
        card_4tr = UIImage(named: "4tr.png")
        card_5tr = UIImage(named: "5tr.png")
        card_6tr = UIImage(named: "6tr.png")
        card_7tr = UIImage(named: "7tr.png")
        card_8tr = UIImage(named: "8tr.png")
        card_9tr = UIImage(named: "9tr.png")
        card_10tr = UIImage(named: "10tr.png")
        card_Jtr = UIImage(named: "Jtr.png")
        card_Qtr = UIImage(named: "Qtr.png")
        card_Ktr = UIImage(named: "Ktr.png")
        
    }
    //------------------------------------------
    func prepareAnimations(duration d: Double,
                           repeating r: Int,
                           cards c: [UIImage]) {
        
        for slotAnimation in arrOfSlotImageViews {
            slotAnimation.animationDuration = d
            slotAnimation.animationRepeatCount = r
            slotAnimation.animationImages = c
        }
    }
    //------------------------------------------
    @IBAction func play(_ sender: UIButton) {
        for slotAnimation in arrOfSlotImageViews {
            slotAnimation.startAnimating()
        }
    }
    //------------------------------------------
}
//----------------------//----------------------
