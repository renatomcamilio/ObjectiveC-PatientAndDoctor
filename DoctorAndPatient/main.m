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
        
        DPPatient *patient = [[DPPatient alloc] initWithName:@"Motorola"
                                                      andAge:@48
                                               andOccupation:@"Cellphone maker"
                                            andHasHealthCard:YES];

        DPPatient *patient2 = [[DPPatient alloc] initWithName:@"Apple"
                                                      andAge:@20
                                                andOccupation:@"Fruit"
                                            andHasHealthCard:NO];

        DPPerson *visitor = [[DPPerson alloc] init];
        visitor.name = @"Eleonor";
        
        [patient visitPerson:doctor];
        [patient2 visitPerson:doctor];
        [visitor visitPerson:doctor];
    }
    
    return 0;
}
