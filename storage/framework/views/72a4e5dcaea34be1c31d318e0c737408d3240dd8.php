<?php $configuracion = app('App\Models\Configuracion'); ?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <title><?php echo e($configuracion->first()->nombre_sistema); ?></title>
    <link rel="stylesheet" href="<?php echo e(mix('css/app.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(mix('css/plantilla.css')); ?>">
</head>

<body class="sidebar-mini layout-fixed control-sidebar-slide-open layout-navbar-fixed">
    <div id="app">
        <?php if(Auth::check()): ?>
            <App ruta="<?php echo e(route('base_path')); ?>" configuracion="<?php echo e($configuracion->first()); ?>"
                user="<?php echo e(Auth::user()); ?>"></App>
        <?php else: ?>
            <Auth ruta="<?php echo e(route('base_path')); ?>" logo="<?php echo e(asset('imgs/' . $configuracion->first()->logo)); ?>"
                empresa="<?php echo e($configuracion->first()->razon_social); ?>" configuracion="<?php echo e($configuracion->first()); ?>">
            </Auth>
        <?php endif; ?>
    </div>
    <script src="<?php echo e(mix('js/app.js')); ?>"></script>
    <script src="<?php echo e(mix('js/plantilla.js')); ?>"></script>
</body>

</html>
<?php /**PATH C:\laragon\www\helpdesk\resources\views/app.blade.php ENDPATH**/ ?>