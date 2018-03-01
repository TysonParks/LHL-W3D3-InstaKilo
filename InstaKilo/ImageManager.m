//
//  ImageManager.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ImageManager.h"

@interface ImageManager()

@property (strong, nonatomic) NSMutableSet <NSString *> *subjectTagsSet;
@property (strong, nonatomic) NSMutableSet <NSString *> *locationSet;

@property (strong, nonatomic) NSMutableArray <Image *> *initialImageObjectArray;
@property (copy, nonatomic, readwrite) NSMutableArray <UIImage *> *outputImageArray;
@property (copy, nonatomic, readwrite) NSMutableArray <NSString *> *sectionsArray;
@property (strong, nonatomic) NSMutableArray *indexArray;

@end


@implementation ImageManager


// MARK: Init
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupImageObjectArray];
        _outputImageArray = [NSMutableArray new];
    }
    return self;
}



// MARK: Public Methods
-(void)getSavedImages {
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
         [self.outputImageArray insertObject:(self.initialImageObjectArray[i].image) atIndex:i];
    }
}


-(void)getSavedImages: (NSArray *) imageArray GroupedBy: (groupType) groupType {
    [self initializeGroupingSets];
    if (groupType == location) {
        [self setupLocationGroupingSet];
        
    } else {
        [self setupSubjectTagsGroupingSet];
    }
}




// MARK: Private Methods
-(void)initializeGroupingSets {
    self.indexArray = [[NSMutableArray alloc]init];
    self.sectionsArray = [[NSMutableArray alloc]init];
    self.locationSet = [[NSMutableSet alloc]init];
    self.subjectTagsSet = [[NSMutableSet alloc]init];
}

-(void)setupLocationGroupingSet {
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
        [self.locationSet addObject:self.initialImageObjectArray[i].location];
    }
}

-(void)setupSubjectTagsGroupingSet {
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
            [self.subjectTagsSet setByAddingObjectsFromSet:self.initialImageObjectArray[i].subjectTags];
    }
}




-(void)setupImageObjectArray {
    // MARK: -Initialize Image objects
    Image *pict0 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-0"] Tags:[NSSet setWithObjects:@"robot", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict1 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-1"] Tags:[NSSet setWithObjects:@"robot", @"fashion", nil] andLocation:@"New York City"];
    
    Image *pict2 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-2"] Tags:[NSSet setWithObjects:@"dog", @"fashion", nil] andLocation:@"New York City"];
    
    Image *pict3 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-3"] Tags:[NSSet setWithObjects:@"dog", @"fashion", nil] andLocation:@"Cambodia"];
    
    Image *pict4 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-4"] Tags:[NSSet setWithObjects:@"mountain", @"cloud", @"landscape", nil] andLocation:@"Seattle"];
    
    Image *pict5 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-5"] Tags:[NSSet setWithObjects:@"sports", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict6 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-6"] Tags:[NSSet setWithObjects:@"sports", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict7 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-7"] Tags:[NSSet setWithObjects:@"sports", @"athlete", @"bobsled", nil] andLocation:@"Maine"];
    
    Image *pict8 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-8"] Tags:[NSSet setWithObjects:@"sports", @"athlete", @"bobsled", nil] andLocation:@"Pyeongchang"];
    
    Image *pict9 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-9"] Tags:[NSSet setWithObjects:@"animal", @"monkey", nil] andLocation:@"Peru"];
    
    // Put Image objects in array
    self.initialImageObjectArray = [[NSMutableArray alloc] initWithObjects:pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, nil];
}


@end
