<?php

declare(strict_types=1);

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

final class ExampleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        if ($request->user()->isAdmin === true) {
            return [
                'id'    => $this->id,
                'name'  => $this->name,
                'email' => $this->email,
            ];
        }

        return [
            'id'    => $this->id,
            'name'  => $this->name,
            'email' => $this->email,
            'kids'  => [
                'id'    => $this->id,
                'name'  => $this->name,
                'email' => $this->email,
            ],
        ];
    }
}
