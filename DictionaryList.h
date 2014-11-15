//
//  DictionaryList.h
//  tableview
//
//  Created by Parimala Gollapudi on 11/15/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DictionaryList : NSObject

#define NAME @"Animal Name"

#define DESC @"Animal Description"

#define IMAGE @"Animal Image"

#define AGE @"Animal Age"


@property (nonatomic, strong) NSArray *animallist;

-(id)initWithAnimals;

@end
