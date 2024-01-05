const results = (strs) => {
  const groups = new Map();
  for (let str of strs) {
    const sortStr = str.split("").sort().join("");
    if (groups.has(sortStr)) {
      groups.get(sortStr).push(str);
    } else {
      groups.set(sortStr, [str]);
    }
  }
  return Array.from(groups.values());
};
const words = ["cook", "save", "taste", "aves", "vase", "state", "map"];
const resultAnagrams = results(words);

console.log(resultAnagrams);
