//
//  ImageManager.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ImageManager.h"

@interface ImageManager()
// Initial Image Object Array
@property (strong, nonatomic) NSMutableArray <Image *> *initialImageObjectArray;
// Internal Sets
@property (strong, nonatomic) NSMutableSet <NSString *> *subjectTagsSet;
@property (strong, nonatomic) NSMutableSet <NSString *> *locationSet;
@property (strong, nonatomic) NSMutableSet <Image *> *initialImageObjectSet;
// Output Arrays
//@property (copy, nonatomic) NSMutableArray <UIImage *> *outputImagesArray;
//@property (copy, nonatomic) NSMutableArray <NSArray *> *sectionsImagesArray;
//@property (copy, nonatomic) NSArray <NSString *> *sectionsNamesArray;



@end


@implementation ImageManager


// MARK: Init
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupInitialImageObjectArray];
        _outputImagesArray = [NSMutableArray new];
    }
    return self;
}



// MARK: Public Methods
-(void)getSavedImages {
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
        [self.outputImagesArray insertObject:(self.initialImageObjectArray[i].image) atIndex:i];
    }
}


-(void)getSavedImagesGroupedBy: (groupType) groupType {
    [self setupInitialImageObjectSet];
    [self initializeGroupingArrays];
    
    if (groupType == location) {
        [self setupLocationGroupingSet];
        self.sectionsNamesArray = [NSMutableArray arrayWithArray:[self.locationSet allObjects]];
        self.sectionsNamesArray = [self.sectionsNamesArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSLog(@"Set: %@", self.sectionsNamesArray);
        
        
        //        for (int i = 0; i < self.locationSet.count; i++) {
        //            <#statements#>
        //        }
        
    } else {
        [self setupSubjectTagsGroupingSet];
        self.sectionsNamesArray = [NSMutableArray arrayWithArray:[self.subjectTagsSet allObjects]];
        self.sectionsNamesArray = [self.sectionsNamesArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSLog(@"Set: %@", self.sectionsNamesArray);

    }
}




// MARK: Private Methods
-(void)initializeGroupingArrays {
    self.sectionsNamesArray = [[NSMutableArray alloc]init];
    self.sectionsImagesArray = [[NSMutableArray alloc]init];
}

-(void)setupLocationGroupingSet {
    self.locationSet = [[NSMutableSet alloc]init];
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
        [self.locationSet addObject:self.initialImageObjectArray[i].location];
    }
}

-(void)setupSubjectTagsGroupingSet {
    self.subjectTagsSet = [[NSMutableSet alloc]init];
    for (int i = 0; i < self.initialImageObjectArray.count; i++) {
        [self.subjectTagsSet addObjectsFromArray:self.initialImageObjectArray[i].subjectTags.allObjects];
    }
}


// MARK: Initialization Methods

-(void)setupInitialImageObjectArray {
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

-(void)setupInitialImageObjectSet {
    self.initialImageObjectSet = [NSMutableSet setWithArray:self.initialImageObjectArray];
}

@end
