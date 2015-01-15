//
//  DPDoctor.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPerson.h"

@interface DPDoctor : DPPerson

@property (nonatomic, strong) NSString *specialization;

- (NSString *)whatIsYourSpecialization;
- (NSString *)whatIsYourName;

- (id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

@end
