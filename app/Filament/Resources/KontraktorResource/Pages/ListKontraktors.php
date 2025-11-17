<?php

namespace App\Filament\Resources\KontraktorResource\Pages;

use App\Filament\Resources\KontraktorResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListKontraktors extends ListRecords
{
    protected static string $resource = KontraktorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
