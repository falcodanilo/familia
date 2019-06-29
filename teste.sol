
pragma solidity >=0.4.22 <0.6.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./testess.sol";

contract test3 {
   
    Falco falcoToTest;
    function beforeAll () public {
       falcoToTest = new Falco(2);
    }
    
    function checkWinningProposal () public {
        falcoToTest.vote(1);
        Assert.equal(falcoToTest.winningProposal(), uint(1), "1 should be the winning proposal");
    }
    
    function checkWinninProposalWithReturnValue () public view returns (bool) {
        return falcoToTest.winningProposal() == 1;
    }
}
