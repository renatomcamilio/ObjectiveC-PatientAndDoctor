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
        DPPatient *patient = [[DPPatient alloc] initWithName:@"Motorola" andAge:@48 andOccupation:@"Cellphone maker"];
        
        NSLog(@"%@", [doctor whatIsYourName]);
        NSLog(@"%@", [patient whatIsYourOccupation]);
    }
    return 0;
}
