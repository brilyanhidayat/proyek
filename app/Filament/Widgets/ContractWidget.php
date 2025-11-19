<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Contract;
use App\Models\Plant;
use App\Models\Kontraktor;

class ContractWidget extends BaseWidget
{
    protected static ?int $sort = 10;
    protected function getStats(): array
    {
        return [
            //
            Stat::make('Total Kontrak', Contract::count())
                ->description('The total number of contracts')
                ->color('success'),
            Stat::make('Total Plant', Plant::count())
                ->description('The total number of Plant')
                ->color('success'),
            Stat::make('Total Vendor', Kontraktor::count())
                ->description('The total number of Vendor')
                ->color('success'),
        ];
    }
}
