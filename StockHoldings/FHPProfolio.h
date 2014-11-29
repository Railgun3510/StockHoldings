//
//  FHPProfolio.h
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FHPStockHolding;

@interface FHPProfolio : NSObject
{
	NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

// declare instance method
- (void)addHoldings:(FHPStockHolding *)stock; // add indivdiual stock to array
- (float)totalValue; // Give total value of stocks in posession

@end
