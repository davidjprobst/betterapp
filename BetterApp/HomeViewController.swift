//
//  homeTableViewController.swift
//  BetterApp
//
//  Created by David Probst on 10/28/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet weak var HomeTableView: UITableView!
    
    var sectionTitles: [String] = ["Streaks", "Goals", "Journals"]
    let streaks: [String] = ["Streak 1", "Streak 2", "Streak 3"]
    let goals: [String] = ["Goal 1", "Goal 2", "Goal 3"]
    let journals: [String] = ["Morning Journal", "Evening Journal"]
    
    var sectionData: [Int: [String]] = [:]
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        sectionData = [0 : streaks, 1 : goals, 2 : journals]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return (sectionData[section]?.count)!
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.11, green:0.12, blue:0.2, alpha:1)
        
        let label = UILabel()
        label.text = sectionTitles[section]
        label.text = label.text?.uppercased()
        label.font = label.font.withSize(15)
        label.frame = CGRect(x: 16, y: 24, width: 100, height: 22)
        view.addSubview(label)
        
        switch section {
        case 0:
            label.textColor = UIColor(red:1, green:0.84, blue:0.04, alpha:1)
            let editButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
            editButton.titleLabel?.text = "Edit"
            view.addSubview(editButton)
        case 1:
            label.textColor = UIColor(red:0.07, green:0.74, blue:0.98, alpha:1)
        case 2:
            label.textColor = UIColor(red:0.84, green:0.55, blue:0.91, alpha:1)
        default:
            label.textColor = UIColor.white
        }
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 54
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if sectionTitles[indexPath.section] == "Streaks" {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "StreakCell", for: indexPath)
                as! StreakCell
            
            let streak = streaks[indexPath.row]
            cell.streakTitle?.text = streak
            cell.streakSubtitle?.text = "12 day streak"
            cell.streakImage?.image = UIImage(named: "streak_complete")
            
            return cell
            
        } else if sectionTitles[indexPath.section] == "Goals" {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath)
                as! GoalCell
            
            let goal = goals[indexPath.row]
            cell.goalTitle?.text = goal
            cell.goalImage?.image = UIImage(named: "goal_complete")
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath)
                as! JournalCell
            
            let journal = journals[indexPath.row]
            cell.journalTitle?.text = journal
            cell.journalBody?.text = "This is dummy text for the journal to see how it responds to having a lot of text to see if it goes on two lines and how long it goes..."
            
            return cell
        }
    }

}
    

