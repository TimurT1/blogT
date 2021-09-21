<?php

namespace App\Controller;

class DefaultController
{

    public function index()
    {
        var_dump("Cela marche!");
        die();
    }

    public function test()
    {
        var_dump("Cela marche Aussi!");
        die();
    }
}
