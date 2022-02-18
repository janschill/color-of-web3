terms = ["web", "decentralized", "sovereignty", "internet", "freedom", "data", "blockchain", "bitcoin", "cryptocurrency", "coin", "wallet", "nft", "defi", "ethereum", "node", "gas", "block", "hashing", "cryptography", "mining", "minting", "pos", "pow", "protocol", "token", "transaction", "web3"]

sorted_string = terms.join.chars.sort(&:casecmp).join

File.open("web3.txt", "w") { |f|
  10000.times { f.write "#{sorted_string.chars.shuffle.join}\n" }
}

def hash_code(str)
  hash = 0
  str.chars.each do |c|
    hash = c.ord + ((hash << 5) - hash)
  end
  hash
end

def int_to_rgb(i)
  c = (i & 0x00FFFFFF).to_s(16).upcase
  "00000"[0, 6 - c.length] + c
end

File.open("web3-hex.txt", "w") { |f|
  File.foreach("web3.txt") { |line|
    f.write "\"##{int_to_rgb(hash_code(line))}\",\n"
  }
}
