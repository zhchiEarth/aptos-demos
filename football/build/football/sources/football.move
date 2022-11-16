module 0x1::football {

    // error code
    const STAR_AREADY_EXISTS: u64 = 100;
    const STAR_NOT_EXISTS: u64 = 101;

    struct FootBallStar has key {
        name: vector<u8>,
        country: vector<u8>,
        position: u8,
        value: u64,
    }

    public fun new_start(name: vector<u8>, country: vector<u8>, position: u8) : FootBallStar {
        FootBallStar {
            name,
            country,
            position,
            value: 0
        }
    }
}