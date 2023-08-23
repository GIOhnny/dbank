export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'topUp' : IDL.Func([IDL.Nat], [], ['oneway']),
    'widrawl' : IDL.Func([IDL.Nat], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
