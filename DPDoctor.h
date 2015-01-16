//
//  DPDoctor.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPerson.h"

@class DPPatient;

@interface DPDoctor : DPPerson

@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *acceptedPatients;

- (NSString *)whatIsYourSpecialization;
- (NSString *)whatIsYourName;
- (void)trackPatient:(DPPatient *)patient;
- (void)requestMedication:(NSArray *)symptoms forPatient:(DPPatient *)patient;
- (id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

@end
