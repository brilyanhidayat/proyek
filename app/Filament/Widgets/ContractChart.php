<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;
use App\Models\Contract;

class ContractChart extends ChartWidget
{
    protected static ?string $heading = 'Chart';
    protected static ?int $sort = 20;

    protected function getData(): array
    {

         return [
            'datasets' => [
                [
                    'label' => 'Contract Active',
                    'data' => [Contract::where('status', 'Active')->count(),Contract::where('status', 'Non Active')->count()],
                    'backgroundColor' => ['#36A2EB', '#f56c42'],
                ],
            ],
            'labels' => ['Active','Non Active'],

        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}
