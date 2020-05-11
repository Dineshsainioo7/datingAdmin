<?php

namespace App\Http\Requests\Backend\Plan;

use App\Models\Plan\Plan;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
/**
 * Class StorePlanRequest.
 */
class StorePlanRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return $this->user()->isAdmin();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(Request $request)
    {
            //echo $this->id; exit();
        return [
            'name' => ['required', 'max:255', Rule::unique('plans')->ignore($this->id)],
            'description' => ['required'],
            'plan_type' => ['required'],
        ];
    }
}
