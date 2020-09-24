//
//  NotesPlayerView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/24/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI
import CoreData

struct NotesPlayerView: View {
    
    @State var players:[NSManagedObject] = []
    @State var newPlayerName = ""
    @State var newPlayerNote = ""
    @State var showSheet = false
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack{
                        Text("Name:")
                        TextField("Name", text: $newPlayerName)
                    }.padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5).foregroundColor(.black)
                    HStack{
                        Text("Note:")
                        TextField("Name", text: $newPlayerNote)
                    }.padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5).foregroundColor(.black)
                    HStack{
                        Button(action:{
                            if((self.newPlayerName == "") || (self.newPlayerNote == "")){
                                
                            }  // END NOT GOOD
                            else{
                                self.addNewPlayer()
                                self.newPlayerName = ""
                                self.newPlayerNote = ""
                            }  // END GOOD
                        }){
                            ButtonStylesFlat(option: "write")
                        }  // END BUTTON
                        Spacer()
                        Button(action:{
                            self.newPlayerName = ""
                            self.newPlayerNote = ""
                        }){
                            ButtonStylesFlat(option: "clear")
                        }  // END BUTTON
                    }
                }  // END VSTACK
                Spacer()
                ScrollView{
                    Text("Players").font(.largeTitle).bold()
                    ForEach(players, id:\.self){ thisPlayer in
                        Button(action: {
                            newPlayerName = (thisPlayer as? CorePlayers)?.name ?? "Error"
                            newPlayerNote = (thisPlayer as? CorePlayers)?.note ?? "Error"
                                self.showSheet = true
                            
                        }){
                            Text((thisPlayer as? CorePlayers)?.name ?? "Error").bold()
                            Text((thisPlayer as? CorePlayers)?.note ?? "Error")
                        }.buttonStyle(PlainButtonStyle()).sheet(isPresented: self.$showSheet, content: {
                            VStack{
                                TextField("Update Name", text: $newPlayerName).padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5).foregroundColor(.black)
                                TextField("Update Notes", text: $newPlayerNote).padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5).foregroundColor(.black)
                                Spacer()
                                Text("Warning:").bold()
                                Text("This will delete, alter, or otherwise modify the data stored in this application.\nPlease ensure you have properly considered the results of the changes you are performing before selecting any button.").multilineTextAlignment(.center)
                                Spacer()
                                HStack{
                                    Button(action:{
                                        if((self.newPlayerName == "") || (self.newPlayerNote == "")){
                                            
                                        }  // END NOT GOOD
                                        else{
                                            self.addNewPlayer()
                                            self.newPlayerName = ""
                                            self.newPlayerNote = ""
                                        }  // END GOOD
                                    }){
                                        ButtonStylesFlat(option: "write")
                                    }  // END UPDATE BUTTON
                                    Spacer()
                                    Button(action:{
                                        self.newPlayerName = ""
                                        self.newPlayerNote = ""
                                    }){
                                        ButtonStylesFlat(option: "clear")
                                    }  // END BUTTON
                                    Spacer()
                                    Button(action:{
                                        self.deletePlayer(thisPlayerName: newPlayerName)
                                        self.showSheet = false
                                    }){
                                        ButtonStylesFlat(option: "remove")
                                    }  // END DELETEBUTTON
                                }  // END HSTACK
                            }.padding()  // END VSTACK
                        })
                    }  // END FOR EACH
                }.navigationTitle("Players").padding().background(Color.gray).cornerRadius(25)  // END SCROLL
            }
        }.padding().onAppear(){self.loadPlayers()}
    }  // END BODY
    
    
    
    
    
    func addNewPlayer(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "CorePlayers", in: managedContext)!
        
        let newCorePlayer = NSManagedObject(entity: entity, insertInto: managedContext)
        
        newCorePlayer.setValue($newPlayerName.wrappedValue, forKeyPath: "name")
        newCorePlayer.setValue($newPlayerNote.wrappedValue, forKey: "note")
        
        do{
            try managedContext.save()
            print("saved successfully --")
            self.loadPlayers()
        } catch let error as NSError{
            print("could not save. \(error), \(error.userInfo)")
        }
    }  // END addNewPlayer
    func loadPlayers(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CorePlayers")
        
        do{
            players = try managedContext.fetch(fetchRequest)
        } catch let error as NSError{
            print("Couldnt fetch. \(error), \(error.userInfo)")
        }
    }  // END loadPlayers
    
    
    func updatePlayerName(currentPlayerName:String, newPlayerName:String){
        print("currentPlayerName = \(currentPlayerName) --- changing to = \(newPlayerName)")
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "CorePlayers")
        fetchRequest.predicate = NSPredicate(format: "name = %@", currentPlayerName)
        
        do {
            let fetchReturn = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = fetchReturn[0] as! NSManagedObject
            objectUpdate.setValue(newPlayerName, forKey: "name")
            do {
                try managedContext.save()
                print("updated successfully")
                self.loadPlayers()
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }  // END updatePlayerName
    
    
    func updatePlayerNote(currentPlayerNote:String, newPlayerNote:String){
        print("currentPlayerNote = \(currentPlayerNote) --- changing to = \(newPlayerNote)")
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "CorePlayers")
        fetchRequest.predicate = NSPredicate(format: "note = %@", currentPlayerNote)
        
        do {
            let fetchReturn = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = fetchReturn[0] as! NSManagedObject
            objectUpdate.setValue(newPlayerNote, forKey: "note")
            do {
                try managedContext.save()
                print("updated successfully")
                self.loadPlayers()
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }  // END updatePlayerName
    
    //Delete
    func deletePlayer(thisPlayerName:String){
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "CorePlayers")
        fetchRequest.predicate = NSPredicate(format: "name = %@", thisPlayerName)
        
        do {
            let fetchReturn = try managedContext.fetch(fetchRequest)
            
            let objectDelete = fetchReturn[0] as! NSManagedObject
            managedContext.delete(objectDelete)
            do {
                try managedContext.save()
                print("deleted successfully")
                self.loadPlayers()
            } catch let error as NSError {
                print("Could not delete. \(error), \(error.userInfo)")
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }  // END deletePlayer
    
    
    
    
    
    
    
    
}  // END STRUCT





struct NotesPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NotesPlayerView()
    }
}
