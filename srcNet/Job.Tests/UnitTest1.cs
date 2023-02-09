namespace Job.Tests;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {

    }

    [Fact]
    [Trait("Category","CI")]
    public void NotSkipTest()
    {

    }

    [Fact]
    [Trait("Category","Skip")]
    public void SkipTest()
    {

    }

    [Fact]
    [Trait("Category","CI")]
    [Trait("Category","Skip")]
    public void AnotherSkipTest()
    {

    }
}