//
//  ViewController.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) NSMutableArray <Image *> *imageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Image *pict0 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-0"] Tags:[NSSet setWithObjects:@"robot", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict1 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-1"] Tags:[NSSet setWithObjects:@"robot", @"fashion", nil] andLocation:@"New York City"];
    
    Image *pict2 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-2"] Tags:[NSSet setWithObjects:@"dog", @"fashion", nil] andLocation:@"New York City"];
    
    Image *pict3 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-3"] Tags:[NSSet setWithObjects:@"dog", @"fashion", nil] andLocation:@"Cambodia"];
    
    Image *pict4 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-4"] Tags:[NSSet setWithObjects:@"mountain", @"cloud", @"landscape", nil] andLocation:@"Seattle"];

    Image *pict5 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-5"] Tags:[NSSet setWithObjects:@"sports", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict6 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-6"] Tags:[NSSet setWithObjects:@"sports", @"athlete", nil] andLocation:@"Pyeongchang"];
    
    Image *pict7 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-7"] Tags:[NSSet setWithObjects:@"sports", @"athlete", @"bobsled" nil] andLocation:@"Maine"];
    
    Image *pict8 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-8"] Tags:[NSSet setWithObjects:@"sports", @"athlete", @"bobsled" nil] andLocation:@"Pyeongchang"];
    
    
    
    Image *pict9 = [[Image alloc]initWithImage:[UIImage imageNamed:@"Pict-9"] Tags:[NSSet setWithObjects:@"animal", @"monkey", nil] andLocation:@"Peru"];

    
    
    
    
    
    
    
    self.imageArray = [[NSMutableArray alloc] init]; // Use initWith after making objects
    
    
}











// MARK: UICollectionViewDataSource protocol methods

// Required
- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSString *cellID = @"photoCell";
    
    
    PhotoViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
    return 10;
}


















// Optional
//- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
//    <#code#>
//}
//
//- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
//    <#code#>
//}
//
//- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
//    <#code#>
//}
//
//- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
//    <#code#>
//}
//
//- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
//    <#code#>
//}
//
//- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
//    <#code#>
//}
//
//- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
//    <#code#>
//}
//
//- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
//    <#code#>
//}
//
//- (void)setNeedsFocusUpdate {
//    <#code#>
//}
//
//- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
//    <#code#>
//}
//
//- (void)updateFocusIfNeeded {
//    <#code#>
//}

@end
