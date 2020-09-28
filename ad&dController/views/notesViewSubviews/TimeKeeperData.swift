//
//  TimeKeeperData.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/22/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import Foundation

func getDayCounterData(withName name: String) -> [Int]?
{
    if  let path = Bundle.main.path(forResource: name, ofType: "plist"),
        let xml = FileManager.default.contents(atPath: path)
    {
        return (try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil)) as? [Int]
    }

    return nil
}

let dayCounterMaster = getDayCounterData(withName: "dayCounterData")
// 0-barryDeath, 1-totalGameDays, 2-daysBeforeSplit, 3-daysBeforeWorldCover, 4-daysBeforeAbyss


let dayCounterText = ["Days since Barry was killed.", "Days since the Main Party first met.", "Days until the inner sphere seperates.", "Days until the anomaly storm covers the world.", "Days until the tear to another plane."]

let daysInYear: Int = 300
let monthsInYear = 10
let daysInMonth: Int = daysInYear / monthsInYear



func getFirstNameData(withName name: String) -> [String]?
{
    if  let path = Bundle.main.path(forResource: name, ofType: "plist"),
        let xml = FileManager.default.contents(atPath: path)
    {
        return (try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil)) as? [String]
    }

    return nil
}

let firstNameArray = getFirstNameData(withName: "firstNameList")
