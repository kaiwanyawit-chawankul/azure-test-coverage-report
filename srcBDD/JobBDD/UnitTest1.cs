namespace JobBDD;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {

    }
}

public class Calculator
{
    public int FirstNumber { set; private get; }
    public int SecondNumber { set; private get; }

    public int Add()
    {
        return FirstNumber + SecondNumber;
    }
}