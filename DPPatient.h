//
//  DPPatient.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPerson.h"

@interface DPPatient : DPPerson

@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSString *occupation;

- (NSString *)whatIsYourName;
- (NSString *)whatIsYourOccupation;
- (NSString *)howOldAreYou;

- (id)initWithName:(NSString *)name andAge:(NSNumber *)age andOccupation:(NSString *)occupation;

@end
