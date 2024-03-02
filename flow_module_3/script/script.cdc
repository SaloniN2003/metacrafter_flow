import holdership from 0x09

pub fun main(account: Address): holdership.Details {
    return holdership.holders[account]!
}
