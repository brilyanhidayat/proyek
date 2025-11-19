<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ContractResource\Pages;
use App\Filament\Resources\ContractResource\RelationManagers;
use App\Models\Contract;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource; 
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput\Mask;

class ContractResource extends Resource
{
    protected static ?string $model = Contract::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //name
                Forms\Components\TextInput::make('nomor')
                  ->label('Nomor Kontrak')
                  ->placeholder('Nomor Kontrak')
                  ->required(),
                Forms\Components\TextInput::make('judul')
                  ->label('Judul')
                  ->placeholder('Judul Kontrak')
                  ->required(),
                Forms\Components\TextInput::make('nomor_agreement')
                  ->label('Nomor Agreement')
                  ->placeholder('Nomor Agreement'),
                Forms\Components\TextInput::make('nomor_sr')
                  ->label('Nomor SR')
                  ->placeholder('Nomor Agreement'),
                Forms\Components\DatePicker::make('start')
                  ->label('Start')
                  ->placeholder('Start')
                  ->required(),
                Forms\Components\DatePicker::make('end')
                  ->label('End')
                  ->placeholder('End')
                  ->required(),
                Forms\Components\Select::make('plant_id')
                  ->relationship('plant', 'name') 
                  ->label('Plant'),
                Forms\Components\Select::make('kontraktor_id')
                  ->relationship('kontraktor', 'name') 
                  ->label('Kontraktor'),
                Forms\Components\TextInput::make('ammount')
                  ->label('Nilai Kontrak (Rp)')
                  ->placeholder('Nilai Kontrak')
                  ->numeric()
                  ->inputMode('decimal')
                  ->integer(),
                Forms\Components\TextInput::make('worker')
                  ->label('Jumlah Pekerja (Orang)')
                  ->placeholder('Jumlah Pekerja')
                  ->numeric()
                  ->inputMode('decimal')
                  ->integer(),
                Forms\Components\Textarea::make('remark')
                  ->label('Remarks')
                  ->placeholder('Remarks')
                  ->rows(4),
                Forms\Components\FileUpload::make('file')
                  ->label('File Kontrak')
                  ->placeholder('File Kontrak')
                  ->openable()
                  ->downloadable(),
                  Select::make('status')
                    ->options([
                        'Active' => 'Active',
                        'Non Active' => 'Non Active',
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nomor')->searchable(),
                Tables\Columns\TextColumn::make('judul')->searchable(),
                Tables\Columns\TextColumn::make('nomor_agreement')->searchable(),
                Tables\Columns\TextColumn::make('nomor_sr')->searchable(),
                Tables\Columns\TextColumn::make('start'),
                Tables\Columns\TextColumn::make('end'),
                Tables\Columns\TextColumn::make('plant.name')->searchable(),
                Tables\Columns\TextColumn::make('kontraktor.name')->searchable(),
                Tables\Columns\TextColumn::make('ammount')->money('idr'),
                Tables\Columns\TextColumn::make('worker'),
                Tables\Columns\TextColumn::make('remark'),
                Tables\Columns\TextColumn::make('status'),
                Tables\Columns\TextColumn::make('file'),
                //
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
   Tables\Actions\DeleteAction::make(),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }


    public static function getHeaderWidget(): array
    {
        return [
            ContractResource::getWidgets(),
        ];
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListContracts::route('/'),
            'create' => Pages\CreateContract::route('/create'),
            'edit' => Pages\EditContract::route('/{record}/edit'),
        ];
    }
}
