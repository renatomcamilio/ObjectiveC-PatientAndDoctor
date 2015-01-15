//
//  DPDoctor.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPDoctor.h"

@implementation DPDoctor

- (NSString *)whatIsYourSpecialization {
    return [NSString stringWithFormat:@"It's %@", self.specialization];
}

- (NSString *)whatIsYourName {
    return [NSString stringWithFormat:@"My name is %@", self.name];
}

- (id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.specialization = specialization;
    }
    
    return self;
}

#pragma mark - Override
- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@\nspecialization: %@\n", self.name, self.specialization];
}

@end

