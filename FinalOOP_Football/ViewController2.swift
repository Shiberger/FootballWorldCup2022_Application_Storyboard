//
//  ViewController2.swift
//  FinalOOP_Football
//
//  Created by Hannarong Kaewkiriya on 28/11/2565 BE.
//

import UIKit

class ViewController2: UIViewController {
    
    var groupdict:Dictionary = [String:[String]]()
    var allgroup:Array = [String]()
    var teamingroup:Array = [String]()
    
    var userchoose:String = ""

    @IBAction func btnA(_ sender: Any) {
        userchoose = allgroup[0]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 0
    }
    
    
    @IBAction func btnB(_ sender: Any) {
        userchoose = allgroup[1]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 1
    }
    
    @IBAction func btnC(_ sender: Any) {
        userchoose = allgroup[2]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 2
    }
    
    @IBAction func btnD(_ sender: Any) {
        userchoose = allgroup[3]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 3
    }
    
    @IBAction func btnE(_ sender: Any) {
        userchoose = allgroup[4]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 4
    }
    
    @IBAction func btnF(_ sender: Any) {
        userchoose = allgroup[5]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 5
    }
    
    @IBAction func btnG(_ sender: Any) {
        userchoose = allgroup[6]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 6
    }
    
    @IBAction func btnH(_ sender: Any) {
        userchoose = allgroup[7]
        let vc = storyboard?.instantiateViewController(withIdentifier: "TeamID") as?
        TableViewController3
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        vc?.nameofteam = groupdict[userchoose]!
        vc?.num = 7
    }
    
    func loadPlist(){
        let urlPD = Bundle.main.url(forResource: "32ทีม", withExtension: "plist")!
        //ดึงไฟล์จากภายนอกเข้ามา
        let dataAT = try! Data(contentsOf: urlPD)
        let plistAT = try! PropertyListSerialization.propertyList(from: dataAT, options: [], format: nil)
            print(plistAT)
            groupdict = plistAT as! Dictionary

        //ใช้for..loopแยกKey/value
        for (k,v) in Array(groupdict).sorted(by: {$0.0 < $1.0}) {
                allgroup.append(k)
                for i in v{
                teamingroup.append(i)
                }
            }
            print(groupdict)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadPlist()
        // Do any additional setup after loading the view.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
