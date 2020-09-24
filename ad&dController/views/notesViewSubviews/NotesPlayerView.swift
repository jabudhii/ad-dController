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
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    TextField("Name", text: $newPlayerName).padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5)
                    TextField("Name", text: $newPlayerNote).padding().background(Color.white).border(Color.black, width: 4).cornerRadius(5)
                    Button(action:{
                        if((self.newPlayerName == "") || (self.newPlayerNote == "")){
                            
                        }  // END NOT GOOD
                        else{
                            self.addNewPlayer()
                            self.newPlayerName = ""
                            self.newPlayerNote = ""
                        }  // END GOOD
                    }){
                        Text("Add Player")
                    }  // END BUTTON
                }  // END VSTACK
                Spacer()
                ScrollView{
                    ForEach(players, id:\.self){ thisPlayer in
                        VStack{
                            Text((thisPlayer as? CorePlayers)?.name ?? "Error").bold()
                            Text((thisPlayer as? CorePlayers)?.note ?? "Error")
                        }  // END VSTACK
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
    
    
    
    
    
    
    
    
    
}  // END STRUCT





struct NotesPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NotesPlayerView()
    }
}
