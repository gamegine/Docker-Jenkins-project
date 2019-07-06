<?php
require "config.php";
require "functions.php";

class StackTest extends PHPUnit\Framework\TestCase
{
    public function testSiteVersion()
    {
        $this->expectOutputString(config('version'));
        $result =  siteVersion();
    }
    public function testSiteName()
    {
        $this->expectOutputString(config('name'));
        $result = siteName();
    }
    public function testcheckRequiredVersions()
    {
        $this->expectOutputString(ccheckRequiredVersions());
    }
}
