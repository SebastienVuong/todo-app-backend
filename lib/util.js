exports.filterKeys = function filterKeys(validKeys, obj) {
  return validKeys.reduce((newObj, key) => {
    if (obj[key] !== undefined) {
      newObj[key] = obj[key];
    }
    return newObj;

  }, {});
};

exports.joinKeys = function joinKeys(prefix, keys) {
  return keys.map(key => `${prefix}.${key} AS ${prefix}_${key}`);
};