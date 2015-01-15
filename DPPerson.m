//
//  DPPerson.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPPerson.h"

@implementation DPPerson

- (void)visitPerson:(DPPerson *)person {
    [person receivePerson:self];
}

- (void)receivePerson:(DPPerson *)person {
    NSLog(@"Hi, welcome!");
}

@end
