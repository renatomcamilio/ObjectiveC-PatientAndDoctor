//
//  DPPatientPrescriptions.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPPatient;

@interface DPPatientPrescriptionsBase : NSObject

@property (nonatomic, strong) NSMutableArray *patientPrescriptions;

- (void)addPrescription:(NSString *)prescription withPatient:(DPPatient *)patient;

#pragma mark - Class methods
+ (DPPatientPrescriptionsBase *)sharedInstance;

@end
