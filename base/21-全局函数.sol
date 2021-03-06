pragma solidity >=0.8.x <0.9.0;


contract Test {
    
    bytes32 public blockhash1;
    address public coinbase;
    uint public difficulty;
    uint public gaslimit;
    uint public blockNum;
    uint public timestamp;
    bytes public calldata;
    uint public gas;
    address public sender;
    bytes4 public sig;
    uint public msgValue;
    uint public now1;
    uint public gasPrice;
    address public txOrigin;
    
    function tt () public payable {
        //给定区块号的哈希值，只支持最近256个区块，且不包含当前区块
        blockhash1 = blockhash(block.number - 1);
        coinbase = block.coinbase ;//当前块矿工的地址。
        difficulty = block.difficulty;//当前块的难度。
        gaslimit = block.gaslimit;// (uint)当前块的gaslimit。
        blockNum = block.number;// (uint)当前区块的块号。
        timestamp = block.timestamp;// (uint)当前块的时间戳。
        calldata = msg.data;// (bytes)完整的调用数据（calldata）。
        gas = gasleft();// (uint)当前还剩的gas。
        sender = msg.sender; // (address)当前调用发起人的地址。
        sig = msg.sig;// (bytes4)调用数据的前四个字节（函数标识符）。
        msgValue = msg.value;// (uint)这个消息所附带的货币量，单位为wei。
        now1 = now;// (uint)当前块的时间戳，等同于block.timestamp
        gasPrice = tx.gasprice;// (uint) 交易的gas价格。
        txOrigin = tx.origin;// (address)交易的发送者（完整的调用链）  
    }
}