//
//  DPPatientPrescriptions.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPPatientPrescriptionsBase.h"

@implementation DPPatientPrescriptionsBase

+ (DPPatientPrescriptionsBase *)sharedInstance {
    static id sharedPrescriptionBase = nil;
    static dispatch_once_t onceToken = 0;
    
    dispatch_once(&onceToken, ^{
        sharedPrescriptionBase = [[self alloc] init];
    });
    
    return sharedPrescriptionBase;
}

- (NSMutableDictionary *)findPatientPrescriptionWithPatient:(DPPatient *)patient {
    for (NSMutableDictionary *patientPrescription in self.patientPrescriptions) {
        if ([[patientPrescription objectForKey:@"patient"] isEqualTo:patient]) {
            return patientPrescription;
        }
    }
    
    return NULL;
}

- (void)addPrescription:(NSString *)prescription withPatient:(DPPatient *)patient {
    NSMutableDictionary *patientPrescription = [self findPatientPrescriptionWithPatient:patient];
    
    if (!patientPrescription) {
        NSMutableDictionary *patientPrescription = [[NSMutableDictionary alloc] init];
        NSMutableArray *prescriptions = [[NSMutableArray alloc] initWithObjects:prescription, nil];
        
        [patientPrescription setObject:prescriptions forKey:@"prescriptions"];
        [patientPrescription setObject:patient forKey:@"patient"];
        
        
        [self.patientPrescriptions addObject:patientPrescription];
    } else {
        [[patientPrescription objectForKey:@"prescriptions"] addObject:prescription];
    }
}

#pragma mark - Override
- (id)init {
    self = [super init];
    
    if (self) {
        self.patientPrescriptions = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
