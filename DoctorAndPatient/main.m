//
//  main.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPDoctor.h"
#import "DPPatient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DPDoctor *doctor = [[DPDoctor alloc] initWithName:@"Renato" andSpecialization:@"Butcher"];
        DPDoctor *doctor2 = [[DPDoctor alloc] initWithName:@"John" andSpecialization:@"Neuro"];
        
        DPPatient *patient = [[DPPatient alloc] initWithName:@"Motorola"
                                                      andAge:@48
                                               andOccupation:@"Cellphone maker"
                                            andHasHealthCard:YES];
        [patient visitPerson:doctor];
        [doctor requestMedication:@[@"headache",
                                    @"stomach pain",
                                    @"weight loss"]
                       forPatient:patient];
        
        [patient visitPerson:doctor2];
        [doctor2 requestMedication:@[@"headache"]
                       forPatient:patient];
    }
    
    return 0;
}
