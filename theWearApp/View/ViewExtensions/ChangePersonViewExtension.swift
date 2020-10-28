//
//  ChangePersonViewExtension.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

extension ChangePersonView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == hairCutsCollectionView {
            if SettingsModel.gender == "man" {
                return Man.hairstyles.count + Man.beards.count + 1
            } else {
                return Woman.hairstyles.count
            }
        } else {
            if collectionView == hairCutColorCollectionView {
                return UIColor.HairColor.colors.count
            } else {
                return UIColor.SkinColor.colors.count
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == hairCutsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hairCutCell", for: indexPath) as! HairCutCell
            cell.subviews.forEach({$0.removeFromSuperview()})
            if SettingsModel.gender == "man" {
                cell.subviews.forEach({$0.removeFromSuperview()})
                let hair = UIView()
                let head = UIView()
                cell.addSubview(head)
                cell.addSubview(hair)
                head.center(cell.centerXAnchor, cell.centerYAnchor, 0, 0, 51, 80)
                head.addSubview(Man.createHead())
                hair.center(cell.centerXAnchor, cell.centerYAnchor, 0, 0, 51, 80)
                if indexPath.item == 0 {
                    hair.addSubview(Man.createCrewCutForCell())
                } else if indexPath.item == 1 {
                    hair.addSubview(Man.createSpikyCutForCell())
                } else if indexPath.item == 2 {
                    hair.addSubview(Man.createSpiky1CutForCell())
                } else if indexPath.item == 3 {
                    hair.addSubview(Man.createStyleHHairCutForCell())
                } else if indexPath.item == 4 {
                    // no hair
                } else if indexPath.item == 5 {
                    head.removeFromSuperview()
                    let separator = UIView()
                    separator.backgroundColor = UIColor(white: 0, alpha: 0.1)
                    separator.layer.cornerRadius = 2.5
                    cell.addSubview(separator)
                    separator.anchor(cell.topAnchor, nil, cell.bottomAnchor, nil, 0, nil, 0, nil, 5, Frames.shared.height * 0.15)
                    separator.centerXAnchor.constraint(equalTo: cell.centerXAnchor, constant: 0).isActive = true
                } else if indexPath.item == 6 {
                    hair.addSubview(Man.createBeardForCell())
                } else if indexPath.item == 7 {
                    //no beard
                } else if indexPath.item == 8 {
                    hair.addSubview(Man.createMustacheForCell())
                } else if indexPath.item == 9 {
                    hair.addSubview(Man.createSpainBeardForCell())
                } else {
                    hair.addSubview(Man.createPuaroForCell())
                }
                [head, hair].forEach {$0.transform = CGAffineTransform(scaleX: Frames.shared.personScale, y: Frames.shared.personScale)}
            } else {
                cell.subviews.forEach({$0.removeFromSuperview()})
                let hair = UIView()
                let head = UIView()
                cell.addSubview(head)
                cell.addSubview(hair)
                head.center(cell.centerXAnchor, cell.centerYAnchor, 0, 0, 51, 80)
                hair.center(cell.centerXAnchor, cell.centerYAnchor, 0, 0, 51, 80)
                head.addSubview(Woman.createHead())
                if indexPath.item == 0 {
                    hair.addSubview(Woman.createBobHairCutForCell())
                } else if indexPath.item == 1 {
                    hair.addSubview(Woman.createBunHairCutForCell())
                } else if indexPath.item == 2 {
                    hair.addSubview(Woman.createLongHairForCell())
                } else if indexPath.item == 3 {
                    hair.addSubview(Woman.createBrushHairCutForCell())
                } else if indexPath.item == 4 {
                    hair.addSubview(Woman.createWavyHairCutForCell())
                } else {
                    hair.addSubview(Woman.createKosyHairCutForCell())
                }
                [head, hair].forEach {$0.transform = CGAffineTransform(scaleX: Frames.shared.personScale, y: Frames.shared.personScale)}
            }
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hairCutColorCell", for: indexPath) as! HairCutColorCell
            if collectionView == hairCutColorCollectionView {
                cell.color.backgroundColor = UIColor.HairColor.colors[indexPath.row]
            } else {
                cell.color.backgroundColor = UIColor.SkinColor.colors[indexPath.row]
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == hairCutsCollectionView {
            if indexPath.item == 5 && SettingsModel.gender == "man" {
                return CGSize(width: Frames.shared.height * 0.05, height: Frames.shared.height * 0.15)
            } else {
                return CGSize(width: Frames.shared.height * 0.15, height: Frames.shared.height * 0.15)
            }
        } else {
            return CGSize(width: Frames.shared.height * 0.1, height: Frames.shared.height * 0.1)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == hairCutsCollectionView {
            return 30
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
    }
    func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool {
        if collectionView == hairCutsCollectionView{
            let selected = hairCutsCollectionView.indexPathsForSelectedItems
            if indexPath.row == 5 {return true}
            else if indexPath.row < 5{//hair
                var hairSelected = [IndexPath]()
                selected?.map{
                    if $0.row < 6 {hairSelected.append($0)}
                }
                if hairSelected.count > 1{return true}
                else {return false}
            }else{//beard
                var beardSelected = [IndexPath]()
                selected?.map{
                    if $0.row > 5 {beardSelected.append($0)}
                }
                if beardSelected.count > 1{return true}
                else {return false}
            }
        }else{return true}
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == hairCutsCollectionView {
            let selected = hairCutsCollectionView.indexPathsForSelectedItems
            print(selected)
            var hairSelected = [IndexPath]()
            
            
            if SettingsModel.gender == SettingsSaver.man {
                selected?.map{
                    if $0.row < Man.hairstyles.count {hairSelected.append($0)}
                }
                guard indexPath.row != 5 else{
                    hairCutsCollectionView.deselectItem(at: indexPath, animated: false)
                    return
                }
                var beardSelected = [IndexPath]()
                selected?.map{
                    if $0.row > Man.hairstyles.count {beardSelected.append($0)}
                }
                if indexPath.row > Man.hairstyles.count{//beard
                    for beard in beardSelected{
                        SettingsModel.beardnumber = indexPath.row - (Man.hairstyles.count + 1)
                        UserDefaultsService.SettingSaver.saveBeardNumber(color: indexPath.row - (Man.hairstyles.count + 1))
                        if beard.row != indexPath.row{
                            hairCutsCollectionView.deselectItem(at: beard, animated: false)
                        }
                    }
                    
                }else{//hair
                    for hair in hairSelected{
                        if hair.row != indexPath.row{
                            hairCutsCollectionView.deselectItem(at: hair, animated: false)
                        }
                    }
                    SettingsModel.hairNumber = indexPath.row
                    UserDefaultsService.SettingSaver.saveHairStyle(number: indexPath.row)
                }
                print(hairSelected)
                print(beardSelected)
            }
            else{ //if woman 
                selected?.map{
                    if $0.row < Woman.hairstyles.count {hairSelected.append($0)}
                }
                for hair in hairSelected{
                    if hair.row != indexPath.row{
                        hairCutsCollectionView.deselectItem(at: hair, animated: false)
                    }
                }
                SettingsModel.hairNumber = indexPath.row
                UserDefaultsService.SettingSaver.saveHairStyle(number: indexPath.row)
            }
            
            
        } else if collectionView == hairCutColorCollectionView {
            
            UserDefaultsService.SettingSaver.saveHairColor(color: indexPath.row)
            SettingsModel.hairColorNumber = indexPath.row
            
            
            DispatchQueue.main.async {
                self.hairCutsCollectionView.reloadData()
                self.hairCutsCollectionView.selectItem(at: IndexPath(item: SettingsModel.hairNumber, section: 0), animated: false, scrollPosition: .left)
            }
            
            
        } else { //skin
            
            UserDefaultsService.SettingSaver.saveSkinColor(color: indexPath.row)
            SettingsModel.skinColorNumber = indexPath.row
            DispatchQueue.main.async {
                self.hairCutsCollectionView.reloadData()
                self.hairCutsCollectionView.selectItem(at: IndexPath(item: SettingsModel.hairNumber, section: 0), animated: false, scrollPosition: .left)
            }
        }
        
        restylePerson(completion: {
            NotificationCenter.default.post(name: .needUpdate, object: self)
        })
        
    }
}
