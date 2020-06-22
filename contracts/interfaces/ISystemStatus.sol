pragma solidity >=0.4.24;


interface ISystemStatus {
    // Views
    function requireSystemActive() external view;

    function requireIssuanceActive() external view;

    function requireExchangeActive() external view;

    function requireSynthActive(bytes32 currencyKey) external view;

    function requireSynthsActive(bytes32 sourceCurrencyKey, bytes32 destinationCurrencyKey) external view;

    // Restricted functions
    function suspendSynth(bytes32 currencyKey, uint256 reason) external;
}
