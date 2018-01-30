# Description

These scripts setup a local-only `geth` node with defaults

# Usage

Copy over some defaults

```
cp config.example.sh config.sh
```

First setup your environment

```
source env.sh
```

Now create an account

```
leth account new
```

Let's make sure that account has Ether when we start mining

Copy over the genesis.json

```
cp genesis.example.json genesis.json
```

Edit the account hash to be the one you created above.

Now reset the db

```
reset
```
