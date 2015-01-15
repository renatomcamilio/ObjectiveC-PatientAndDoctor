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
        _name = name;
        _specialization = specialization;
    }
    
    return self;
}

- (id)init {
    return [self initWithName:@"No name" andSpecialization:@"Sans nom"];
}

@end

