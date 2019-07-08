//
//  CTRATableViewCell.h
//  FloFrame
//
//  Created by Dom Project on 04/07/2017.
//  Copyright © 2017 Cotham Technologies. All rights reserved.
//

#import "RATableViewCell.h"

@interface CTRATableViewCell : RATableViewCell

@property (weak, nonatomic) UILabel *detailedLabel;
@property (weak, nonatomic) UILabel *customTitleLabel;
@property (weak, nonatomic) UIButton *additionButton;


- (void)setupWithTitle:(NSString *)title detailText:(NSString *)detailText level:(NSInteger)level additionButtonHidden:(BOOL)additionButtonHidden withFormatDictionary:(NSDictionary *)formatDictionary;

@end
