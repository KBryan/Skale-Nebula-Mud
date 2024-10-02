import { defineWorld } from "@latticexyz/world";

export default defineWorld({
  namespace: "app",
  tables: {
    Counter: {
      schema: {
        value: "uint32",
      },
      key: [],
    },
    BalanceTable: {
      schema: {
        owner:"address",
        item:"uint32"
      },
      key: [],
    }
  },
});
