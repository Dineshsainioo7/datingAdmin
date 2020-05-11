<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-title">
                <?php echo app('translator')->getFromJson('menus.backend.sidebar.general'); ?>
            </li>
            <li class="nav-item">
                <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/dashboard'))); ?>" href="<?php echo e(route('admin.dashboard')); ?>">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <?php echo app('translator')->getFromJson('menus.backend.sidebar.dashboard'); ?>
                </a>
            </li>

            <li class="nav-title">
                <?php echo app('translator')->getFromJson('menus.backend.sidebar.system'); ?>
            </li>

            <?php if($logged_in_user->isAdmin()): ?>
                <li class="nav-item nav-dropdown <?php echo e(active_class(Active::checkUriPattern('admin/auth*'), 'open')); ?>">
                    <a class="nav-link nav-dropdown-toggle <?php echo e(active_class(Active::checkUriPattern('admin/auth*'))); ?>" href="#">
                        <i class="nav-icon far fa-user"></i>
                        <?php echo app('translator')->getFromJson('menus.backend.access.title'); ?>

                        <?php if($pending_approval > 0): ?>
                            <span class="badge badge-danger"><?php echo e($pending_approval); ?></span>
                        <?php endif; ?>
                    </a>

                    <ul class="nav-dropdown-items">
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/user*'))); ?>" href="<?php echo e(route('admin.user')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.access.users.management'); ?>

                                <?php if($pending_approval > 0): ?>
                                    <span class="badge badge-danger"><?php echo e($pending_approval); ?></span>
                                <?php endif; ?>
                            </a>
                        </li>
                    
                    </ul>
                </li>
                 <li class="nav-item nav-dropdown <?php echo e(active_class(Active::checkUriPattern('admin/activity*'), 'open')); ?>">
                    <a class="nav-link nav-dropdown-toggle <?php echo e(active_class(Active::checkUriPattern('admin/activity*'))); ?>" href="#">
                        <i class="nav-icon fas fa-list"></i>
                        <?php echo app('translator')->getFromJson('labels.backend.sidebar.activity'); ?>

                        <?php if($pending_approval > 0): ?>
                            <span class="badge badge-danger"><?php echo e($pending_approval); ?></span>
                        <?php endif; ?>
                    </a>

                    <ul class="nav-dropdown-items">
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/interest*'))); ?>" href="<?php echo e(route('admin.interest')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.interest'); ?>

                                <?php if($pending_approval > 0): ?>
                                    <span class="badge badge-danger"><?php echo e($pending_approval); ?></span>
                                <?php endif; ?>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/page*'))); ?>" href="<?php echo e(route('admin.pages.index')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.Static-page'); ?>
                            </a>
                        </li>
                    </ul>
                </li>
                
                <!-- 
                <li class="nav-item nav-dropdown <?php echo e(active_class(Active::checkUriPattern('admin/plan*'), 'open')); ?>">
                    <a class="nav-link nav-dropdown-toggle <?php echo e(active_class(Active::checkUriPattern('admin/plan*'))); ?>" href="#">
                           <i class="nav-icon fas fa-paper-plane"></i>
                        <?php echo app('translator')->getFromJson('labels.backend.sidebar.plan'); ?>

                        <?php if($pending_approval > 0): ?>
                            <span class="badge badge-danger"><?php echo e($pending_approval); ?></span>
                        <?php endif; ?>
                    </a>

                    <ul class="nav-dropdown-items">
                       <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/plan-privilege*'))); ?>" href="<?php echo e(route('admin.plan-privilege.index')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.privileges'); ?>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/plans*'))); ?>" href="<?php echo e(route('admin.plans.index')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.plan-management'); ?>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/plan-feature*'))); ?>" href="<?php echo e(route('admin.feature.index')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.plan-feature'); ?>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/plan-month*'))); ?>" href="<?php echo e(route('admin.month.index')); ?>">
                                <?php echo app('translator')->getFromJson('labels.backend.sidebar.plan-month'); ?>
                            </a>
                        </li>
                    </ul>
                </li> 
                -->
                <li class="divider"></li>

                <li class="nav-item nav-dropdown <?php echo e(active_class(Active::checkUriPattern('admin/log-viewer*'), 'open')); ?>">
                        <a class="nav-link nav-dropdown-toggle <?php echo e(active_class(Active::checkUriPattern('admin/log-viewer*'))); ?>" href="#">
                        <i class="nav-icon fas fa-list"></i> <?php echo app('translator')->getFromJson('menus.backend.log-viewer.main'); ?>
                    </a>

                    <ul class="nav-dropdown-items">
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/log-viewer'))); ?>" href="<?php echo e(route('log-viewer::dashboard')); ?>">
                                <?php echo app('translator')->getFromJson('menus.backend.log-viewer.dashboard'); ?>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php echo e(active_class(Active::checkUriPattern('admin/log-viewer/logs*'))); ?>" href="<?php echo e(route('log-viewer::logs.list')); ?>">
                                <?php echo app('translator')->getFromJson('menus.backend.log-viewer.logs'); ?>
                            </a>
                        </li>
                    </ul>
                </li>
            <?php endif; ?>
        </ul>
    </nav>

    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div><!--sidebar-->
<?php /**PATH D:\wamp32\www\loai\dating\www\resources\views/backend/includes/sidebar.blade.php ENDPATH**/ ?>