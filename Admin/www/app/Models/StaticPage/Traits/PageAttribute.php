<?php
namespace App\Models\StaticPage\Traits;

/**
 * Trait PageAttribute.
 */

/**
 * summary
 */
trait PageAttribute
{
    /**
     * summary
     */
    public function getStatusButtonAttribute()
    {
        if ($this->status == 1) {
                return '<a href="'.route('admin.pages.changestatus',$this->id).'" data-toggle="tooltip" data-placement="top" title="'.__('Deactive').'" name="confirm_item"><span class="badge badge-success" style="cursor:pointer">'.__('Active').'</span></a>';
            }       

              return '<a href="'.route('admin.pages.changestatus', $this->id).'" data-toggle="tooltip" data-placement="top" title="'.__('Active').'" name="confirm_item"><span class="badge badge-danger" style="cursor:pointer">'.__('Deactive').'</span></a>';
    }

    public function getEditButtonAttribute()
    {
        return '<a href="'.route('admin.pages.edit', $this->id).'" data-toggle="tooltip" data-placement="top" title="'.__('buttons.general.crud.edit').'" class="btn btn-primary"><i class="fas fa-edit"></i></a>';
    }

    public function getDeleteButtonAttribute()
    {
       
        return '<a href="'.route('admin.pages.destroy', $this->id).'"
                 data-method="delete"
                 data-trans-button-cancel="'.__('buttons.general.cancel').'"
                 data-trans-button-confirm="'.__('buttons.general.crud.delete').'"
                 data-trans-title="'.__('strings.backend.general.are_you_sure').'"
                 class="btn btn-danger"><i class="fas fa-trash"></i></a> ';
    }

    public function getActionButtonsAttribute()
    {
        

        return '
    	<div class="btn-group" role="group" aria-label="'.__('labels.backend.access.users.user_actions').'">
		  '.$this->delete_button.'
		  '.$this->edit_button.'
		</div>';
    }
}