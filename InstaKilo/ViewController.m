//
//  ViewController.m
//  InstaKilo
//
//  Created by Tyson Parks on 2/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"
#import "PhotoViewCell.h"
#import "ImageManager.h"
#import "Image.h"

@interface ViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;



@property (strong, nonatomic) NSArray <UIImage *> *imageArray;
@property (strong, nonatomic) ImageManager *imageManager;
@property (strong, nonatomic) UICollectionViewFlowLayout *simpleLayout;



@end


@implementation ViewController
// MARK: viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Assign datasource
    self.collectionView.dataSource = self;
    
    // Instantiate the ImageManager and get
    self.imageManager = [[ImageManager alloc]init];
    [self.imageManager getSavedImages];
    self.imageArray =  self.imageManager.outputImagesArray;
    
    [self setupSimpleLayout];
    
    self.collectionView.collectionViewLayout = self.simpleLayout;
    
    
}

// MARK: Sorting Action Methods
- (IBAction)locationButton:(id)sender {
    // Sort images by location
    [self.imageManager getSavedImagesGroupedBy:location];
}


- (IBAction)subjectButton:(id)sender {
    // Sort images by subject
    [self.imageManager getSavedImagesGroupedBy:subject];
}



// MARK: Internal methods

-(void)setupSimpleLayout {
    self.simpleLayout = [[UICollectionViewFlowLayout alloc] init];
    
    self.simpleLayout.itemSize = CGSizeMake(165, 120); // Set size of cell
    //    self.simpleLayout.estimatedItemSize = CGSizeMake(160, 160); // Set size of cell
    //    self.simpleLayout.itemSize = UICollectionViewFlowLayoutAutomaticSize;
    self.simpleLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);  // Padding around each section
    self.simpleLayout.minimumInteritemSpacing = 15;  // Minimum horizontal spacing between cells
    self.simpleLayout.minimumLineSpacing = 10;  // Minimum vertical spacing
    
    // By default, direction is vertical
    self.simpleLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    // Add this line so headers will appear. If this line is not present, headers will not appear
    //    self.simpleLayout.headerReferenceSize = CGSizeMake(50, self.collectionView.frame.size.height);
    
    // Add this line so footers will appear. If this line is not present, footers will not appear
    //    self.simpleLayout.footerReferenceSize = CGSizeMake(30, self.collectionView.frame.size.height);
}



// MARK: UICollectionViewDataSource protocol methods

// Required

// Format the amount of Sections
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    NSUInteger numberOfSections = self.imageManager.outputImagesArray.count;
//    numberOfSections = self.imageManager.sectionsImagesArray.count;
    return numberOfSections;
}

// Format the amount of rows per section
- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSUInteger numberOfImages = self.imageManager.outputImagesArray.count;
    
    
    for (int i = 0; i < self.imageManager.sectionsImagesArray.count; i++) {
        numberOfImages = self.imageManager.sectionsImagesArray[i].count;
    }
    
    
    
//    NSUInteger numberOfImages = self.imageArray.count;
    return numberOfImages;
}

// Assign images to each cell based upon (section, row)
- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSString *cellID = @"photoCell";
    PhotoViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    cell.photoCellImageView.image = [self.imageArray objectAtIndex:(long)indexPath.row];
    
    return cell;
}

@end
