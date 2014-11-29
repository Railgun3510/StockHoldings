//
//  FHPStockHolding.h
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FHPStockHolding : NSObject

// declare accessor
@property (nonatomic) float purchasePrice;
@property (nonatomic) float currentPrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;

// declare method
- (float)costInDollars;
- (float)valueInDollars;

@end
