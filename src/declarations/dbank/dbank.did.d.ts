import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'compound' : () => Promise<undefined>,
  'topUp' : () => Promise<undefined>,
  'withdrawl' : (arg_0: number) => Promise<undefined>,
}
