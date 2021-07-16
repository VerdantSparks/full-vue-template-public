declare module "vuetify/lib/framework" {
    import Vuetify from "vuetify";
    export default Vuetify;
  }

  /*
  workaround credits: https://github.com/vuetifyjs/vuetify/issues/9648#issue-520625566
   */
  declare module "vuetify/lib/services/goto" {
    import Vue from "vue";
    export default function goTo<T extends string | number | HTMLElement | Vue>(
      target: T,
      options?: any
    ): any;
  }
