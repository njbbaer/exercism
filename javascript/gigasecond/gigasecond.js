const GIGASECOND_IN_MS = 10 ** 12

export const gigasecond = (date) => {
  return new Date(date.getTime() + GIGASECOND_IN_MS);
};
