<template>
  <div class="entry-field">
    <h2>Ваша зарплата в месяц</h2>
    <input 
      class="input" 
      type="number"
      placeholder="Введите данные"
      v-model="display"
      v-on:keyup.enter="calc"
      >
    <span class="calc" @click="calc">Рассчитать</span>
    <div class="list" v-if="show">
      <h2>Итого можете внести <br> в качестве досрочных:</h2>
      <ul
      v-for="(item, index) in payout"
      :key="index">
        <li class="item">
          <input v-bind:id="index" class="checkbox" type="checkbox" checked>
          <label v-bind:for="index" class="checkbox-label">
          </label>
          <span>{{item.count}} рублей </span>
          <span>{{item.title}}</span>
        </li>
      </ul>
    </div>
    <div class="wrapper">
      <h2 class="ident">Что уменьшаем?</h2>
      <div class="elips-button">
        <button v-bind:class="{ elips: true, active: activeButton == 1 }" @click="activeButton = 1">Платеж</button>
        <button v-bind:class="{ elips: true, active: activeButton == 2 }" @click="activeButton = 2">Срок</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false,
      display: '',
      maxPayout: 260000,
      annual: '',
      payout: [],
      activeButton: 1
    }
  },
  methods: {
    getPlural(ind) {
      const lastNumb = Number(String(ind)[String(ind).length - 1]);

      if (ind > 8 && ind < 22 || lastNumb === 1 || lastNumb === 4 ||
          lastNumb === 5 || lastNumb === 9 || lastNumb === 0) {
        return 'ый';
      }
      if (lastNumb === 2 || lastNumb === 6 || lastNumb === 7 || lastNumb === 8) {
        return 'ой';
      }
      if (lastNumb === 3) {
        return 'ий';
      }

      return 'xx';
    },
    calc() {
      this.display = this.display < 12000 ? 12000 : this.display;

      this.show = true;
      this.payout = [];
      this.annual = (this.display * 12) * 0.13;
      if (this.annual >= this.maxPayout) {
        this.payout.push(this.maxPayout);
      } else {
        do {
          this.payout.push(this.annual);
        } while ((this.payout.reduce((a, b) => a + b)) < this.maxPayout);

        let lastYear = this.maxPayout - ((this.payout.reduce((a, b) => a + b)) - this.annual);
        this.payout = this.payout.fill(lastYear, -1);

        this.payout = this.payout.map((el, ind) => ({
          count: el,
          title: `в ${ind + 1}-${this.getPlural(ind + 1)} год`
        }));
      }
    }
  },
}
</script>

<style>
h2 {
  font-weight: 500;
  font-size: 14px;
  color: #000000;
  margin: 12px 0 8px;
}
.input {
  border: 1px solid #DFE3E6;
  box-sizing: border-box;
  border-radius: 3px;
  height: 40px;
  width: 100%;
  padding: 8px 10px;
}
.input:hover {
  border: 1px solid #000000;
}
.input:focus-visible {
  border: 1px solid #DFE3E6;
  outline: none;
}
.input::-webkit-outer-spin-button,
.input::-webkit-inner-spin-button {
    /* display: none; <- Crashes Chrome on hover */
    -webkit-appearance: none;
    margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
}
.calc {
  display: block;
  font-weight: 500;
  font-size: 14px;
  line-height: 24px;
  color: #EA0029;
  margin: 8px 0;
  cursor: pointer;
}
.ident {
  margin: 24px 0;
}
.elips-button {
  display: flex;
}
.elips {
  cursor: pointer;
  margin-right: 8px;
  display: flex;
  align-items: center;
  padding: 0 12px;
  height: 36px;
  background: #EEF0F2;
  color: #000000;
  border: none;
  outline: none;
  border-radius: 50px;
  font-size: 14px;
}
.elips.active {
  background: linear-gradient(255.35deg, #DC3131 0.83%, rgba(255, 79, 79, 0) 108.93%), #FF5E56;
  color: white;
}
.elips:not(.active):hover {
  background: #DFE3E6;
  color: #000;
}
.item {
  display: flex;
  align-items: center;
  list-style-type: none;
  height: 56px;
  border-bottom: 1px solid #DFE3E6;
}
.item span {
  font-size: 14px;
  line-height: 24px;
  color: #000;
  margin-right: 4px;
}
.item span:last-child {
  color: #808080;
}
.checkbox-label {
  width: 20px;
  height: 20px;
  display: block;
  position: relative;
  margin-right: 11px;
  border-radius: 6px;
  border: 1px solid #DFE3E6;
  overflow: hidden;
}
.checkbox {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}
.checkbox:checked ~ label {
  border: none;
  background: #FF5E56 url(../../assets/ICO/checkbox.svg) no-repeat center center;
}

@media screen and (min-width: 768px) {
  .wrapper {
    margin: 24px 0;
    display: flex;
    align-items: center;
    flex-wrap: wrap;
  }

  .ident {
    margin: 0;
    margin-right: 32px;
  }
}

</style>