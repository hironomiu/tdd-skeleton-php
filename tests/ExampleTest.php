<?php
class ExampleTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     */
    public function hello_helloが返ること()
    {
        $example = new Example();
        $this->assertEquals("hello",$example->hello());
    }
}
