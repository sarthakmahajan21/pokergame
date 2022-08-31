<?php $__env->startSection('content'); ?>
    <div id="masthead" class="mb-5">
        <div class="jumbotron jumbotron-fluid text-center">
            <div class="container">
                <h1 class="display-3 text-black"><?php echo e(__('Poker')); ?></h1>
                <div>
                    <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(route('frontend.users.show', auth()->user())); ?>" class="btn btn-primary btn-lg"><?php echo e(__('My profile')); ?></a>
                    <?php else: ?>
                        <a href="<?php echo e(route('login')); ?>" class="btn btn-outline-info btn-lg mr-2"><?php echo e(__('Log in')); ?></a>
                        <a href="<?php echo e(route('register')); ?>" class="btn btn-info btn-lg"><?php echo e(__('Sign up')); ?></a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <div id="call-to-action-blocks" class="container">
        <div class="row">
            <div class="col-lg-4 mt-3 mb-5">
                <div class="bg-secondary shadow-sm p-3">
                    <h2><?php echo e(__('Free trial')); ?></h2>
                    <p>
                        <?php echo e(__('Sign up and get :x free credits to play and try our casino.', ['x' => config('settings.bonuses.sign_up_credits')])); ?>

                    </p>
                    <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(route('frontend.users.show', auth()->user())); ?>" class="btn btn-primary"><?php echo e(__('My profile')); ?></a>
                    <?php else: ?>
                        <a href="<?php echo e(route('register')); ?>" class="btn btn-primary"><?php echo e(__('Sign up')); ?></a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.home', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>