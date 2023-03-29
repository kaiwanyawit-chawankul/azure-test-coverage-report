using FluentAssertions;

namespace Job.Tests;

public class Sample
{
    public int Plus(int A,int B)
    {
        return A+B;
    }
}

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        var sut = new Sample();
        var result = sut.Plus(1,1);
        result.Should().Be(2);
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