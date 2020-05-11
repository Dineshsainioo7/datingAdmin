<div class="col">
    <div class="table-responsive">
        <table class="table table-hover">
            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.avatar'); ?></th> 
                <?php  $picture =isset($user->userProfile->profile_pic) && !empty($user->userProfile->profile_pic)?$user->userProfile->profile_pic:'';    ?>
                <td><img src="<?php echo e(url('user/image/'.$picture)); ?>" class="user-profile-image"  style="width: 15%; height: 90px;" /></td>
            </tr>

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.name'); ?></th>
                <td><?php echo e($user->name); ?></td>
            </tr>

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.email'); ?></th>
                <td><?php echo e($user->email); ?></td>
            </tr>

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.status'); ?></th>
                <td><?php echo $user->status_label; ?></td>
            </tr>

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.confirmed'); ?></th>
                <td><?php echo $user->confirmed_label; ?></td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.gender'); ?></th>
                <td>
                   <?php if(isset($user->userProfile->gender)): ?>
                        <?php if($user->userProfile->gender == 'F'): ?>
                                  Female
                        <?php else: ?>
                                   Male    
                        <?php endif; ?> 
                    <?php endif; ?>

                    <?php if(empty($user->userProfile->gender)): ?>
                            Not Provide
                    <?php endif; ?> 
                       
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.interests'); ?></th>
                <td>
                    <?php if(isset($user->userProfile->interest_name)): ?>
                            
                           <?php $__empty_1 = true; $__currentLoopData = $user->userProfile->interest_name; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $interest): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?> 
                           |<?php echo $interest->name; ?>

                           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                             Not Provide
                           <?php endif; ?>  
                    <?php endif; ?>

                    <?php if(empty($user->userProfile->interest_name)): ?>
                            Not Provide
                    <?php endif; ?> 
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.date-of-birth'); ?></th>
                <td>
                     <?php if(isset($user->userProfile->date_of_birth)): ?>
                           <?php echo $user->userProfile->date_of_birth; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->date_of_birth)): ?>
                            Not Provide
                     <?php endif; ?> 
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.contact-number'); ?></th>
                <td>
                    <?php if(isset($user->userProfile->contact_numbers)): ?>
                           <?php echo $user->userProfile->contact_numbers; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->contact_numbers)): ?>
                            Not Provide
                     <?php endif; ?> 
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.interested_in'); ?></th>
                <td> 
                    <?php if(isset($user->userProfile->interested_in)): ?>
                           <?php echo $user->userProfile->interested_in; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->interested_in)): ?>
                            Not Provide
                     <?php endif; ?>
                </td>
            </tr>
             <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.country'); ?></th>
                <td> 
                    <?php if(isset($user->userProfile->country_name)): ?>
                           <?php echo $user->userProfile['country_name']; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->country_name)): ?>
                            Not Provide
                     <?php endif; ?>
                </td>
            </tr>
             <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.state'); ?></th>
                <td>
                    <?php if(isset($user->userProfile->state)): ?>
                           <?php echo $user->userProfile['state_name']; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->state)): ?>
                            Not Provide
                     <?php endif; ?>
                 </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.city'); ?></th>
                <td>
                    <?php if(isset($user->userProfile->city)): ?>
                           <?php echo $user->userProfile['city_name']; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->city)): ?>
                            Not Provide
                     <?php endif; ?>
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.address'); ?></th>
                <td>
                    <?php if(isset($user->userProfile->address)): ?>
                           <?php echo $user->userProfile->address; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->address)): ?>
                            Not Provide
                     <?php endif; ?>
                </td>
            </tr>
            <tr>
                <th><?php echo app('translator')->getFromJson('validation.attributes.backend.access.users.summery'); ?></th>
                <td>
                     <?php if(isset($user->userProfile->summery)): ?>
                           <?php echo $user->userProfile->summery; ?>  
                     <?php endif; ?>

                     <?php if(empty($user->userProfile->summery)): ?>
                            Not Provide
                     <?php endif; ?>
                </td>
            </tr>
            

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.last_login_at'); ?></th>
                <td>
                    <?php if($user->last_login_at): ?>
                        <?php echo e(timezone()->convertToLocal($user->last_login_at)); ?>

                    <?php else: ?>
                        N/A
                    <?php endif; ?>
                </td>
            </tr>

            <tr>
                <th><?php echo app('translator')->getFromJson('labels.backend.access.users.tabs.content.overview.last_login_ip'); ?></th>
                <td><?php echo e($user->last_login_ip ?? 'N/A'); ?></td>
            </tr>
        </table>
    </div>
</div><!--table-responsive-->

    <?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/auth/user/show/tabs/overview.blade.php ENDPATH**/ ?>