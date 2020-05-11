<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Route;

/**
 * Class Controller.
 */
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    public function getAllControllersActions()
    {
    	$controllers = [];
        $frontendcontrollers = array();
        $backendcontrollers = array();
        foreach (Route::getRoutes()->getRoutes() as $route)
        {
            $action = $route->getAction();
            if (array_key_exists('controller', $action))
            {
                if (strpos($action['controller'], 'Frontend') !== false) {
                    $action_string = explode("\\",$action['controller']);
                    $controller_action = $action_string[count($action_string)-1];
                    $controller_action_array = explode("@",$controller_action);
                    $action_array['controller'] = $controller_action_array[0];
                    if(in_array($controller_action_array[0], $frontendcontrollers))
                    {
                        $frontendcontrollers[$controller_action_array[0]][$controller_action_array[1]] = $controller_action_array[1];
                    }
                    else
                    { 
                        $frontendcontrollers[$controller_action_array[0]][$controller_action_array[1]] = $controller_action_array[1];
                    }
                }
                elseif (strpos($action['controller'], 'Backend') !== false) 
                {
                    $action_string = explode("\\",$action['controller']);
                    $controller_action = $action_string[count($action_string)-1];
                    $controller_action_array = explode("@",$controller_action);
                    $action_array['controller'] = $controller_action_array[0];
                    if(in_array($controller_action_array[0], $backendcontrollers))
                    {
                        $backendcontrollers[$controller_action_array[0]][$controller_action_array[1]] = $controller_action_array[1];
                    }
                    else
                    { 
                        $backendcontrollers[$controller_action_array[0]][$controller_action_array[1]] = $controller_action_array[1];
                    }
                }
                
            }
        }
        $controllers['Frontend'] = $frontendcontrollers;
        $controllers['Backend'] = $backendcontrollers;
        return $controllers;
    }


    public function getAllControllers()
    {
    	$controllers = [];
        $frontendcontrollers = array();
        $backendcontrollers = array();
        foreach (Route::getRoutes()->getRoutes() as $route)
        {
            $action = $route->getAction();
            if (array_key_exists('controller', $action))
            {
                if (strpos($action['controller'], 'Frontend') !== false) {
                    $action_string = explode("\\",$action['controller']);
                    $controller_action = $action_string[count($action_string)-1];
                    $controller_action_array = explode("@",$controller_action);
                    $action_array['controller'] = $controller_action_array[0];
                    if(!in_array($controller_action_array[0], $frontendcontrollers))
                    {
                        $frontendcontrollers['Frontend-'.$controller_action_array[0]] = $controller_action_array[0];
                    }
                }
                elseif (strpos($action['controller'], 'Backend') !== false) 
                {
                    $action_string = explode("\\",$action['controller']);
                    $controller_action = $action_string[count($action_string)-1];
                    $controller_action_array = explode("@",$controller_action);
                    $action_array['controller'] = $controller_action_array[0];
                    if(!in_array($controller_action_array[0], $backendcontrollers))
                    {
                        $backendcontrollers['Backend-'.$controller_action_array[0]] = $controller_action_array[0];
                    }
                }
                
            }
        }
        $controllers['Frontend'] = $frontendcontrollers;
        $controllers['Backend'] = $backendcontrollers;

        return $controllers;
    }


    function getControllerActions($controller = null)
    {
        $controllers = $this->getAllControllersActions();
        $controllernaction = explode('-', $controller);
        $actions = $controllers[$controllernaction[0]][$controllernaction[1]];
        return $actions;
    }
}
