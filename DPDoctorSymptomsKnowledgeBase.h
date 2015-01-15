//
//  DPDoctorSymptomsKnowledgeBase.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPDoctorSymptomsKnowledgeBase : NSObject

- (NSString *)prescriptionForSymptoms:(NSArray *)symptoms;

@end
