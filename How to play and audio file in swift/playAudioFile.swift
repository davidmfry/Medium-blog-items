import UIKit

// Step 1
import AVFoundation

class PlaySoundsViewController: UIViewController
{

    // Global variable so you can use this in other parts of the code
    var audio: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Step 2
        if var path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        {
            // Step 3
            let pathURL = NSURL(string: path)
            self.audio = AVAudioPlayer(contentsOfURL: pathURL, error: nil)

            // Step 4
            self.audio.play()
        }
        else
        {
            println("There was an error trying to ger the path")
        }
    }
   
}    
