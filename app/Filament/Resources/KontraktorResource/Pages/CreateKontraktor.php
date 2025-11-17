<?php

namespace App\Filament\Resources\KontraktorResource\Pages;

use App\Filament\Resources\KontraktorResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateKontraktor extends CreateRecord
{
    protected static string $resource = KontraktorResource::class;
    protected static bool $canCreateAnother = false;

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
