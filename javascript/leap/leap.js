const isDivisable = (a, b) => {
  return a % b === 0
};

export const isLeap = year => {
  return isDivisable(year, 4) 
    && (!isDivisable(year, 100) 
      || isDivisable(year, 400))
};
