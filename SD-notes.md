# Notes on chain hammer 

## Uses ethSendTransaction

Delegating signing transactions to the node incurs a performance hit

**Recommendation**: 
- Use `ethsendRawTransaction` to see if performance improves


## Gas Usage for contract call 

Gas Limit = 90000
Transaction Cost = 21800
Execution Cost = 	400

Excess Gas = 57200

I suspect this might cause some transactions to drop up as the blocks fill up quicker. 
There is a caveat in that unused gas gets returned.

**Recomendation**: 
 - Use the right gas costs ~ 22000 to see if there are any performance improvements


Justification from `config.py`

    # gas given for .set(x) transaction
    # N.B.: must be different from (i.e. higher than) the eventually used gas in
    # a successful transaction; because difference is used as sign for a FAILED
    # transaction in the case of those clients which do not have a
    # 'transactionReceipt.status' field yet
    GAS_FOR_SET_CALL = 90000

