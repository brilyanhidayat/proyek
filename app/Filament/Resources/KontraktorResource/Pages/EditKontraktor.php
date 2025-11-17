<?php

namespace App\Filament\Resources\KontraktorResource\Pages;

use App\Filament\Resources\KontraktorResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditKontraktor extends EditRecord
{
    protected static string $resource = KontraktorResource::class;

    protected function getHeaderActions(): array
    {
        return [
        ];
    }

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
