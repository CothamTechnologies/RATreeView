//
//  CTRATableViewCell.m
//  FloFrame
//
//  Created by Dom Project on 04/07/2017.
//  Copyright © 2017 Cotham Technologies. All rights reserved.
//

#import "CTRATableViewCell.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@implementation CTRATableViewCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setupWithTitle:(NSString *)title detailText:(NSString *)detailText level:(NSInteger)level additionButtonHidden:(BOOL)additionButtonHidden withFormatDictionary:(NSDictionary *)formatDictionary
{
    
    // DO trialling...
    self.selectedBackgroundView.frame = self.bounds;
    self.selectedBackgroundView.backgroundColor = [UIColor orangeColor];
    self.backgroundColor = [UIColor clearColor];
    
    
    self.customTitleLabel.text = title;
    self.detailedLabel.text = detailText;
    self.additionButtonHidden = additionButtonHidden;
    
    //self.backgroundColor = [UIColor greenColor];
    
    if (level == 0) {
        // note: don't think self.detailTextLabel is practically in use (whereas self.detailedLabel is)
        self.detailTextLabel.textColor = [UIColor blackColor];
    }
    
    /*
    if (level == 0) {
        self.backgroundColor = [UIColor clearColor]; //UIColorFromRGB(0xF7F7F7);
    } else if (level == 1) {
        self.backgroundColor = [UIColor clearColor]; //UIColorFromRGB(0xD1EEFC);
    } else if (level >= 2) {
        self.backgroundColor = [UIColor clearColor]; //UIColorFromRGB(0xE0F8D8);
    }
    
    */
    
    if (level == 0) {
        self.backgroundColor = UIColorFromRGB(0xF7F7F7);
    } else if (level == 1) {
        self.backgroundColor = UIColorFromRGB(0xD1EEFC);
    } else if (level == 2) {
        self.backgroundColor = UIColorFromRGB(0xE0F8D8);
    } else if (level >= 3) {
        self.backgroundColor = UIColorFromRGB(0xE0E8D8);
    }
    //self.backgroundColor = [UIColor whiteColor];
    
    CGFloat left = 11 + 20 * level;
    
    CGRect titleFrame = self.customTitleLabel.frame;
    titleFrame.origin.x = left;
    
    
    NSString *titleLabelFontName = @"HelveticaNeue", *detailLabelFontName = @"HelveticaNeue";
    CGFloat titleLabelFontSize = 16.0, detailLabelFontSize = 12.0;
    UIColor *detailLabelFontColor = nil;
    if (formatDictionary[@"titleLabelFontName"]) {
        titleLabelFontName = formatDictionary[@"titleLabelFontName"];
    }
    if (formatDictionary[@"titleLabelFontSize"]) {
        titleLabelFontSize = [formatDictionary[@"titleLabelFontSize"] floatValue];
    }
    if (formatDictionary[@"detailLabelFontName"]) {
        detailLabelFontName = formatDictionary[@"detailLabelFontName"];
    }
    if (formatDictionary[@"detailLabelFontSize"]) {
        detailLabelFontSize = [formatDictionary[@"detailLabelFontSize"] floatValue];
    }
    if (formatDictionary[@"detailLabelFontColor"]) {
        detailLabelFontColor = (UIColor *)formatDictionary[@"detailLabelFontColor"];
    }
    
    UIFont *titleLabelFont = [UIFont fontWithName:titleLabelFontName size:titleLabelFontSize];
    
    // original title label frame setting code
    //self.customTitleLabel.frame = titleFrame;
    
    // new frametitle label frame setting code
    CGFloat cellHeight = self.frame.size.height;
    CGSize textSize = [self.customTitleLabel.text sizeWithAttributes:@{NSFontAttributeName:titleLabelFont}];
    self.customTitleLabel.frame = CGRectMake(left, cellHeight/2-(textSize.height/1.25), titleFrame.size.width, textSize.height);
    self.customTitleLabel.font = titleLabelFont;
    
    CGRect detailsFrame = self.detailedLabel.frame;
    detailsFrame.origin.x = left;
    self.detailedLabel.frame = detailsFrame;
    self.detailedLabel.font = [UIFont fontWithName:detailLabelFontName size:detailLabelFontSize];
    
    // the below doesn't work - can't change color of detailedLabel for some reason
    // though can change font and fontsize
    // can change color of customTitleLabel
    if (detailLabelFontColor) {
        self.detailedLabel.textColor = detailLabelFontColor;
    }
}


@end
