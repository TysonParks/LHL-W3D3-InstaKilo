//
//  ImageManager.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ImageManager.h"

@interface ImageManager()

@property (strong, nonatomic) NSSet *subjectTagsSet;
@property (strong, nonatomic) NSSet *locationSet;

@property (strong, nonatomic) NSMutableArray <Image *> *initialImageArray;
@property (copy, nonatomic, readwrite) NSMutableArray <UIImage *> *outputImageArray;
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
//    if (!self.initialImageArray) {
//        [self setupImageObjectArray];
//    }
    for (int i = 0; i < self.initialImageArray.count; i++) {
         [self.outputImageArray insertObject:(self.initialImageArray[i].image) atIndex:i];
    }
    
}


-(void)getSavedImages: (NSArray *) imageArray GroupedBy: (groupType) groupType {
    
}




// MARK: Private Methods




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
    self.initialImageArray = [[NSMutableArray alloc] initWithObjects:pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, pict0, pict1, pict2, pict3, pict4, pict5, pict6, pict7, pict8, pict9, nil];
}


@end
