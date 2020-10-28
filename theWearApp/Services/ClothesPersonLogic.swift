//
//  ClothesLogic.swift
//  theWearApp
//
//  Created by Валентина on 29.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

func determmineAppropriateClothes(for gender: String, feelsLike : String, code : String) -> UIView {
    
    var person = UIView()
    let feels = Int(feelsLike) ?? (Int(temperature[2]) != nil ? Int(temperature[2])! : 0)
    let description = Status.allStatuses[code]?.0 ?? "Sunny"
    let isRaining = (description.lowercased().contains("rain") || (description.lowercased().contains("drizzle"))) ? true : false
    if gender == "man" {
        person = determineManClothes(for: feels, rain: isRaining)
    } else if gender == "woman" {
        person = determineWomanClothes(for: feels, rain: isRaining)
    }
    return person
}

func determineWomanHairCut() -> UIView {
    var haircut = UIView()
    switch SettingsModel.hairNumber {
    case 0:
        haircut = Woman.createBobHairCut()
    case 1:
        haircut = Woman.createBunHairCut()
    case 2:
        haircut = Woman.createLongHair()
    case 3:
        haircut = Woman.createBrushHairCut()
    case 4:
        haircut = Woman.createWavyHairCut()
    case 5:
        haircut = Woman.createKosyHairCut()
    default:
        haircut = Woman.createBobHairCut()
    }
    return haircut
}

func determineManHairCut() -> UIView {
    var haircut = UIView()
    switch SettingsModel.hairNumber {
    case 0:
        haircut = Man.createCrewCut()
    case 1:
        haircut = Man.createSpikyCut()
    case 2:
        haircut = Man.createSpiky1Cut()
        //    case 3:
    //        haircut = Man.createLongHairCut()
    case 3:
        haircut = Man.createStyleHHairCut()
    case 4:
        haircut = Man.createBald()
    default:
        haircut = Man.createCrewCut()
    }
    return haircut
}
func determineBeard() -> UIView {
    var beard = UIView()
    if SettingsModel.gender == SettingsSaver.man{
        print("now beard \(SettingsModel.beardnumber)")
        switch SettingsModel.beardnumber {
        case 0:
            beard = Man.createBeard()
        case 1:

            print("no beard selected")
        case 2:
            beard = Man.createMustache()
        case 3:
            beard = Man.createSpainBeard()
        case 4:
            beard = Man.createPuaro()
        default:
            beard = Man.createBeard()
        }
    }
    return beard
}


func determineWomanClothes(for temp : Int, rain : Bool) -> UIView {
    
    let woman = UIView()
    woman.frame = CGRect(x: 0, y: 0, width: 250, height: 500)
    
    switch(temp) {
    case -60 ... -10:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createBoots(), WomanWhenRain.createRightGloveWhenRain(), WomanWhenRain.createJacket(), WomanWhenRain.createUmbrellaUnderHairCut(), Woman.createScarf(), Woman.createHat(), WomanWhenRain.createUmbrellaAfterHaircut(), WomanWhenRain.createLeftGloveWhenRain()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createBoots(), Woman.createGloves(), Woman.createJacket(), Woman.createScarf(), Woman.createHat()].forEach {woman.addSubview($0)}
        }
    case -10 ... 0:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createBoots(), WomanWhenRain.createRightGloveWhenRain(), WomanWhenRain.createJacket(), WomanWhenRain.createUmbrellaUnderHairCut(), Woman.createScarf(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut(), WomanWhenRain.createLeftGloveWhenRain()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createBoots(), Woman.createGloves(), Woman.createJacket(), Woman.createScarf(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 0 ... 5:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createBoots(), WomanWhenRain.createJacket(), WomanWhenRain.createUmbrellaUnderHairCut(), Woman.createScarf(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createBoots(), Woman.createJacket(), Woman.createScarf(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 5 ... 10:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), WomanWhenRain.createCoat(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), Woman.createCoat(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 10 ... 15:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), WomanWhenRain.createCoat(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), Woman.createCoat(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 15 ... 20:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), WomanWhenRain.createSweatShirt(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createJeans(), Woman.createGymShoes(), Woman.createSweatShirt(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 20 ... 22:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createLongSkirt(), Woman.createGymShoes(), WomanWhenRain.createBlouse(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createLongSkirt(), Woman.createGymShoes(), Woman.createBlouse(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 22 ... 25:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createSkirt(), Woman.createGymShoes(), WomanWhenRain.createBlouse(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createSkirt(), Woman.createSandals(), Woman.createBlouse(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 25 ... 30:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createSkirt(), Woman.createSandals(), WomanWhenRain.createBlouse(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createSkirt(), Woman.createLowShoes(), Woman.createBlouse(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    case 30 ... 600:
        if rain {
            [WomanWhenRain.createSkeleton(), Woman.createLowShoes(), Woman.createDress(), WomanWhenRain.createUmbrellaUnderHairCut(), determineWomanHairCut(), WomanWhenRain.createUmbrellaAfterHaircut()].forEach {woman.addSubview($0)}
        } else {
            [Woman.createSkeleton(), Woman.createLowShoes(), Woman.createDress(), determineWomanHairCut()].forEach {woman.addSubview($0)}
        }
    default:
        print("God knows what to put on ")
    }
    woman.addSubview(Woman.createMask())
    return woman
}

func determineManClothes(for temp : Int, rain : Bool) -> UIView {
    
    let man = UIView()
    man.frame = CGRect(x: 0, y: 0, width: 250, height: 500)
    
    switch(temp) {
    case -60 ... -10:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createBoots(), ManWhenRain.createRightGloveWhenRain(), ManWhenRain.createJacketWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), Man.createScarf(), Man.createCrewCut(), Man.createHat(), determineBeard(),ManWhenRain.createUmbrellaAfterHaircut(), ManWhenRain.createLeftGloveWhenRain()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createBoots(), Man.createGloves(), Man.createJacket(), Man.createScarf(), Man.createCrewCut(), Man.createHat(), determineBeard()].forEach {man.addSubview($0)}
        }
    case -10 ... 0:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createBoots(), ManWhenRain.createRightGloveWhenRain(), ManWhenRain.createJacketWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), Man.createScarf(), determineManHairCut(),determineBeard(),  ManWhenRain.createUmbrellaAfterHaircut(), ManWhenRain.createLeftGloveWhenRain()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createBoots(), Man.createGloves(), Man.createJacket(), Man.createScarf(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 0 ... 5:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createBoots(), ManWhenRain.createJacketWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), Man.createScarf(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createBoots(), Man.createJacket(), Man.createScarf(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 5 ... 10:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createBoots(), ManWhenRain.createJacketWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createBoots(), Man.createJacket(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 10 ... 15:        if rain {
        [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createSneakers(), ManWhenRain.createWindBreakerWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
    } else {
        [Man.createSkeleton(), Man.createJeans(), Man.createSneakers(), Man.createWindBreaker(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 15 ... 20:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createSneakers(), ManWhenRain.createHoodieWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(), determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createSneakers(), Man.createHoodie(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 20 ... 22:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createSneakers(), ManWhenRain.createLongsleeveWhenRain(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createSneakers(), Man.createLongsleeve(), determineManHairCut() ,determineBeard()].forEach {man.addSubview($0)}
        }
    case 22 ... 25:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createJeans(), Man.createSneakers(), Man.createTshirt(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createJeans(), Man.createSneakers(), Man.createTshirt(), determineManHairCut(),determineBeard()].forEach {man.addSubview($0)}
        }
    case 25 ... 30:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createShorts(), Man.createShoes(), Man.createTshirt(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createShorts(), Man.createShoes(), Man.createTshirt(), determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    case 30 ... 600:
        if rain {
            [ManWhenRain.createSkeletonWhenRain(), Man.createShorts(), Man.createSlippers(), Man.createTshirt(), ManWhenRain.createUmbrellaUnderHairCut(), determineManHairCut(),determineBeard(), ManWhenRain.createUmbrellaAfterHaircut()].forEach {man.addSubview($0)}
        } else {
            [Man.createSkeleton(), Man.createShorts(), Man.createSlippers(), Man.createTshirt(),determineManHairCut(), determineBeard()].forEach {man.addSubview($0)}
        }
    default:
        print("God knows what to put on ")
    }
    man.addSubview(Man.createMask())
    return man
}

func getClothesComment(temp : Int)->String {
    var clothesComment = ""
    switch(temp){
    case -60 ... -10:
        clothesComment = "Stay warm!"
    case -10 ... 0:
        clothesComment = "Put on a scarf and a warm coat."
    case 0 ... 5:
        clothesComment = "Put on a coat and a scarf with gloves."
    case 5 ... 10:
        clothesComment = "Put on a coat."
    case 10 ... 15:
        clothesComment = "Put on a windbreaker."
    case 15 ... 22:
        clothesComment = "Put on a longsleeve."
    case 22 ... 30:
        clothesComment = "Put on a T-shirt."
    case 30 ... 600:
        clothesComment = "Put on your lightest clothes."
    default:
        clothesComment = ""
    }
    return clothesComment
}
func restylePerson(completion : @escaping()->()){
    persons = []
    
    for i in 0...feelsLike.count - 1{
        persons.append(determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: feelsLike[i], code: iconNames[i]))
    }
    completion()
}


extension UIColor{
    struct SkinColor{
        static let colors = [UIColor.createColor(r: 226, g: 183, b: 148),
                             UIColor.createColor(r: 197, g: 153, b: 117),
                             UIColor.createColor(r: 168, g: 115, b: 73),
                             UIColor.createColor(r: 101, g: 60, b: 28),
                             UIColor.createColor(r: 53, g: 30, b: 12)
        ]
    }
    struct HairColor{
        static let colors = [UIColor.createColor(r: 235, g: 194, b: 113),
                             UIColor.createColor(r: 212, g: 170, b: 117),
                             UIColor.createColor(r: 99, g: 70, b: 58),
                             UIColor.createColor(r: 96, g: 47, b: 25),
                             UIColor.createColor(r: 54, g: 32, b: 26),
                             UIColor.createColor(r: 38, g: 20, b: 17),
                             UIColor.createColor(r: 16, g: 21, b: 29),
        ]
    }
    
    static func createColor(r : Int, g : Int, b : Int)->UIColor{
        return UIColor(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: 1)
    }
}

