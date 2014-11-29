//
//  FHPForeignStockHolding.h
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "FHPStockHolding.h"

@interface FHPForeignStockHolding : FHPStockHolding

// Declare new variable of currency exchange rate
@property (nonatomic) float conversionRate;

@end
