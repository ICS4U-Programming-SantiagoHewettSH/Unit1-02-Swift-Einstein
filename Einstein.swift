//  Einstein.swift
//
//  Created by Santiago Hewett
//  Created on 2025/02/14
//  Version 1.0
//  Copyright (c) Santiago Hewett. All rights reserved.
//
//  This program will calculate the energy released based on mass.


// Import Foundation library
import Foundation


// Constants used double to simply calculations and it is sufficient for the value
let SPEED_OF_LIGHT: Double = 299792458


func einstein() {
   // Welcome message
   print("This program will calculate the energy released based on mass.")


   // Declare mass double variable
   var massAsDouble: Double?


   // Repeat while loop to run until valid mass is entered
   repeat {
       // Message to ask user for mass
       print("Please enter the mass you will be using in kg: ")


       // Read user mass as a string and use guard to make sure input is valid
       guard let massAsString = readLine() else {
           // Error message
           print("Invalid input. Please enter a valid log length.")
           // Continue to reset loop and ask for input again
           continue
       }


       // Safely convert user mass as a string to double and use guard to make sure input is valid
       guard let massAsDoubleLoop = Double(massAsString) else {
           // Error message
           print("Invalid input: \(massAsString). Mass must be greater than or equal to 0.")
           // Continue to reset loop and ask for input again
           continue
       }


       // Check if mass is valid
       if massAsDoubleLoop >= 0 {
           // Store valid mass
           massAsDouble = massAsDoubleLoop
           // Exit loop
           break
       } else {
           print("Invalid input: \(massAsDoubleLoop). Mass must be greater than or equal to 0.")
       }
   } while true


   // Calculate the energy in joules and force unwrap because it is an optional variable that does not contain nil
   let energyInJoules: Double = massAsDouble! * pow(SPEED_OF_LIGHT, 2)


   // Display the energy in joules
   print("The energy released from ", String(format: "%.3f", massAsDouble!)
       , "kg of mass is:", String(format: "%.3eJ", energyInJoules))


}


// Call function
einstein()