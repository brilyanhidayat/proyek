<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use App\Models\Contract;
use App\Models\Plant;
use App\Models\Kontraktor;
use Carbon\Carbon;

class ContractExpiredChart extends ChartWidget
{
    protected static ?string $heading = 'Expired Status';
    protected static ?int $sort = 30;

    /*protected function getData(): array
    {
       return [
            //
             // Example: Fetching data for a bar chart from a 'sales' table
            $salesData = DB::table('Contract')
                        ->select(DB::raw('Count(nomor) as total'), DB::raw('DATEDIFF(end,start) as expired'))
                        ->groupBy(DB::raw('DATEDIFF(`end`,`start`)'))
                        ->orderBy(DB::raw('DATEDIFF(`end`,`start`)'))
                        ->get();

            $labels = $salesData->pluck('total')->toArray();
            $data = $salesData->pluck('expired')->toArray();

            return [
                'datasets' => [
                    [
                        'label' => 'Contract Expired (Day)',
                        'data' => $data,
                        'backgroundColor' => '#36A2EB', // Optional: customize color
                    ],
                ],
                'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }*/

    protected function getData(): array
    {
        $today = Carbon::today();

        return [
            'datasets' => [
                [
                    'label' => 'Expired Status',
                    'data' => [
                        Contract::whereDate('end', '<', $today)->count(),
                        Contract::whereDate('end', '>=', $today)->count(),
                    ],
                    'backgroundColor' => ['#ef4444', '#22c55e'],
                ],
            ],
            'labels' => ['Expired', 'Not Expired'],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}
