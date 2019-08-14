# Notes on chain hammer 

## Uses ethSendTransaction

Delegating signing transactions to the 




## Gas Usage for contract call 


Gas Limit = 90000
Transaction Cost = 21800
Execution Cost = 	400

Total Contract Creation Cost = 176316

Excess Gas = 723684 

Recomendation: Use the right gas costs 


Justificatin from `config.py`

    # gas given for .set(x) transaction
    # N.B.: must be different from (i.e. higher than) the eventually used gas in
    # a successful transaction; because difference is used as sign for a FAILED
    # transaction in the case of those clients which do not have a
    # 'transactionReceipt.status' field yet
    GAS_FOR_SET_CALL = 90000