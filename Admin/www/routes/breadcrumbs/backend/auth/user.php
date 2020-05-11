<?php

Breadcrumbs::for('admin.user', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('labels.backend.access.users.management'), route('admin.user'));
});

Breadcrumbs::for('admin.user.deactivated', function ($trail) {
    $trail->parent('admin.user');
    $trail->push(__('menus.backend.access.users.deactivated'), route('admin.user.deactivated'));
});

Breadcrumbs::for('admin.auth.user.deleted', function ($trail) {
    $trail->parent('admin.auth.user.index');
    $trail->push(__('menus.backend.access.users.deleted'), route('admin.auth.user.deleted'));
});

Breadcrumbs::for('admin.user.create', function ($trail) {
    $trail->parent('admin.user');
    $trail->push(__('labels.backend.access.users.create'), route('admin.user.create'));
});

Breadcrumbs::for('admin.user.show', function ($trail, $id) {
    $trail->parent('admin.user');
    $trail->push(__('menus.backend.access.users.view'), route('admin.user.show', $id));
});

Breadcrumbs::for('admin.user.edit', function ($trail, $id) {
    $trail->parent('admin.user');
    $trail->push(__('menus.backend.access.users.edit'), route('admin.user.edit', $id));
});

Breadcrumbs::for('admin.user.change-password', function ($trail, $id) {
    $trail->parent('admin.user');
    $trail->push(__('menus.backend.access.users.change-password'), route('admin.user.change-password', $id));
});
