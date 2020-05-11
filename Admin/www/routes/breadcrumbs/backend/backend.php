<?php

Breadcrumbs::for('admin.dashboard', function ($trail) {
    $trail->push(__('strings.backend.dashboard.title'), route('admin.dashboard'));
});


// Interest breadcrumbs
Breadcrumbs::for('admin.interest', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.interest.title'), route('admin.interest'));
});
Breadcrumbs::for('admin.interest.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.interest.title'), route('admin.interest'));
});
Breadcrumbs::for('admin.interest.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.interest.title'), route('admin.interest',$id));
});

//  static page
Breadcrumbs::for('admin.pages.index', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.pages.title'), route('admin.pages.index'));
});

Breadcrumbs::for('admin.pages.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.pages.title'), route('admin.pages.index'));
});
Breadcrumbs::for('admin.pages.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.pages.title'), route('admin.pages.edit',$id));
});

///  Plan View Page
Breadcrumbs::for('admin.plans.index', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plans.title'), route('admin.plans.index'));
});

Breadcrumbs::for('admin.plans.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plans.title'), route('admin.plans.index'));
});
Breadcrumbs::for('admin.plans.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plans.title'), route('admin.plans.edit',$id));
});

// Plan Feature 
Breadcrumbs::for('admin.feature.index', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.feature.title'), route('admin.feature.index'));
});

Breadcrumbs::for('admin.feature.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.feature.title'), route('admin.feature.index'));
});
Breadcrumbs::for('admin.feature.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.feature.title'), route('admin.feature.edit',$id));
});

// Plan Month
Breadcrumbs::for('admin.month.index', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.month.title'), route('admin.month.index'));
});

Breadcrumbs::for('admin.month.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.month.title'), route('admin.month.index'));
});
Breadcrumbs::for('admin.month.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.month.title'), route('admin.month.edit',$id));
});


Breadcrumbs::for('admin.plan-privilege.index', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plan-privilege.title'), route('admin.plan-privilege.index'));
});

Breadcrumbs::for('admin.plan-privilege.create', function ($trail) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plan-privilege.title'), route('admin.plan-privilege.index'));
});
Breadcrumbs::for('admin.plan-privilege.edit', function ($trail,$id) {
    $trail->parent('admin.dashboard');
    $trail->push(__('strings.backend.plan-privilege.title'), route('admin.plan-privilege.edit',$id));
});
require __DIR__.'/auth.php';
require __DIR__.'/log-viewer.php';
