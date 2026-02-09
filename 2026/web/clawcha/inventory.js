const inventory = [
  {
    name: 'kafka',
    probability: 0.23,
    msg: 'A member of the Stellaron Hunters who is calm, collected, and beautiful.'
  },
  {
    name: 'dan-heng',
    probability: 0.41,
    msg: 'A Liyue adeptus and a skilled warrior.'
  },
  {
    name: 'acheron',
    probability: 0.19,
    msg: 'A mysterious and powerful warrior from the Honkai universe.'
  },
  {
    name: 'jingliu',
    probability: 0.67,
    msg: 'A skilled warrior and a member of the Wangsheng Funeral Parlor.'
  },
  {
    name: 'mavuika',
    probability: 0.85,
    msg: 'A mysterious and powerful warrior from the Honkai universe.'
  },
  {
    name: 'chasca',
    probability: 0.31,
    msg: 'A skilled warrior and a member of the Fatui.'
  },
  {
    name: 'clorinde',
    probability: 0.58,
    msg: 'A skilled warrior and a member of the Fatui.'
  },
  {
    name: 'arlecchino',
    probability: 0.92,
    msg: 'A mysterious and powerful warrior from the Honkai universe.'
  },
  {
    name: 'neuvilette',
    probability: 0.14,
    msg: 'A skilled warrior and a member of the Fatui.'
  },
  {
    name: 'wriothesley',
    probability: 0.76,
    msg: 'A skilled warrior and a member of the Fatui.'
  },
  {
    name: 'zhongli',
    probability: 0.49,
    msg: 'A consultant of the Wangsheng Funeral Parlor and a powerful adeptus.'
  }
];

const lookup = new Map();
for (const entry of inventory) {
  lookup.set(entry.name, entry);
};

module.exports.gacha = (name) => {
  return lookup.get(name);
};

module.exports.addItem = (entry) => {
  inventory.push(entry);
  lookup.set(entry.name, entry);
};
