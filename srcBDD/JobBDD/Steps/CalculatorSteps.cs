using FluentAssertions;
using TechTalk.SpecFlow;

namespace JobBDD.Steps
{
    [Binding]
    public class CalculatorSteps
    {
        private readonly Calculator _calculator = new Calculator();
        private int _result;

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int number)
        {
            _calculator.FirstNumber = number;
        }

        [Given(@"I have also entered (.*) into the calculator")]
        public void GivenIHaveAlsoEnteredIntoTheCalculator(int number)
        {
            _calculator.SecondNumber = number;
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            _result = _calculator.Add();
        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int expectedResult)
        {
            _result.Should().Be(expectedResult);
        }
    }
}