//
//  ChatTableViewCell.m
//  Test
//
//  Created by beauty on 10/22/15.
//  Copyright (c) 2015 beauty. All rights reserved.
//

#import "ChatTableViewCell.h"

@implementation ChatTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        
        _lblTitle = [[UILabel alloc] initWithFrame:CGRectZero];
        _lblTitle.text = @"Title";
        _lblTitle.font = [UIFont systemFontOfSize:16.0];
        [self addSubview:_lblTitle];

        
        _lblSubtitle = [[UILabel alloc] initWithFrame:CGRectZero];
        _lblSubtitle.text = @"Subtitle";
        _lblSubtitle.font = [UIFont systemFontOfSize:11.0];
        [self addSubview:_lblSubtitle];
        
        _imgSmall = [[UIImageView alloc] initWithFrame:CGRectZero];
        [_imgSmall setBackgroundColor:[UIColor grayColor]];
        [self addSubview:_imgSmall];
        
        _imgLarge = [[UIImageView alloc] initWithFrame:CGRectZero];
        [_imgLarge setBackgroundColor:[UIColor grayColor]];
        [self addSubview:_imgLarge];
        
        
    }
    
    return self;
    
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGSize cellSize = self.frame.size;
    
    [_imgSmall setFrame:CGRectMake(15, 0, 44, 44)];
    [_imgLarge setFrame:CGRectMake(cellSize.width - 80, 8, 72, 72)];
    [_lblTitle setFrame:CGRectMake(74, 8, cellSize.width - 126, 20)];
    [_lblSubtitle setFrame:CGRectMake(74, 30, cellSize.width - 126, 14)];
    
    
    
    
}

@end
