export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'compound' : IDL.Func([], [], ['oneway']),
    'topUp' : IDL.Func([], [], ['oneway']),
    'withdrawl' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
