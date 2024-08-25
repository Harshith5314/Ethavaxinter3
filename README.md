# Ethavaxinter3
```markdown
# Harshith Token (Hs)

## Overview
The `Harshith` smart contract is an ERC20 token built on the Ethereum blockchain using the Solidity programming language. This token implements the basic functionalities of the ERC20 standard along with additional features for minting and burning tokens.

## Features
- **Minting:** The contract owner (referred to as `Kohli`) can mint new tokens.
- **Burning:** Token holders can burn their own tokens.
- **Transfer:** Standard ERC20 token transfer functionality.

## Smart Contract Details

### Contract Name: `Harshith`

### Token Details
- **Token Name:** Harshith
- **Token Symbol:** Hs
- **Decimals:** 18 (Inherited from ERC20 standard)

### Functions

#### 1. `mintToken(address account, uint256 amount) external onlyKohli`
- **Description:** Allows the contract owner (`Kohli`) to mint new tokens to a specified account.
- **Modifiers:** `onlyKohli` - Restricts access to the contract owner.

#### 2. `burnToken(address account, uint256 amount) external`
- **Description:** Allows token holders to burn their own tokens.
- **Requirements:** The caller must be the owner of the tokens they want to burn.

#### 3. `transferToken(address recipient, uint256 amount) external returns (bool)`
- **Description:** Transfers tokens from the caller's account to the specified recipient.
- **Returns:** A boolean value indicating whether the operation succeeded.

### Modifiers

#### `onlyKohli`
- **Description:** Ensures that only the contract owner (`Kohli`) can call the function.

## Deployment
The contract is designed to be deployed on the Ethereum network. Upon deployment:
- The deployer becomes the contract owner (`Kohli`).
- The owner has exclusive rights to mint new tokens.

## Usage

### Minting Tokens
Only the contract owner can mint tokens by calling the `mintToken` function:
```solidity
mintToken(address account, uint256 amount);
```

### Burning Tokens
Token holders can burn their own tokens by calling the `burnToken` function:
```solidity
burnToken(address account, uint256 amount);
```

### Transferring Tokens
Token transfers can be done using the `transferToken` function:
```solidity
transferToken(address recipient, uint256 amount);
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
