<?php

namespace App\Filament\Resources\ContractResource\Widgets;

use Filament\Widgets\ChartWidget;

class ContractChart extends ChartWidget
{
    protected static ?string $heading = 'Chart';

    protected function getData(): array
    {
        return [
            //
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}
