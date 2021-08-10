<template>
  <div class="modal">
    <div class="background" @click="closePopup"></div>
    <div class="container">
      <div class="header">
        <div class="close" @click="closePopup">
          <img src="../../assets/ICO/cross.svg">
        </div>
        <h1>Налоговый вычет</h1>
        <p class="header-text">
          Используйте налоговый вычет чтобы погасить ипотеку досрочно. 
          Размер налогового вычета составляет не более 13% от своего официального годового дохода.
        </p>
      </div>
      <div class="content">
        <slot></slot>
      </div>
      <div class="footer">
        <button class="big-button submit">Добавить</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    closePopup() {
      this.$emit('closePopup')
    }
  }
}
</script>

<style>
.modal {
  background: #fff;
  position: absolute;
  z-index: 9;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
  overflow-y: auto;
}
.container {
  min-height: 100%;
  padding: 16px 16px 96px;
  position: relative;
}
h1 {
  font-weight: 500;
  font-size: 18px;
  margin: 16px 0;
}
.header-text {
  color: #808080;
  font-size: 12px;
  margin-bottom: 24px;
}
.close {
  cursor: pointer;
  width: 24px;
  height: 24px;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  top: 16px;
  right: 16px;
}
.footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 16px;
}
.submit {
  width: 100%;
  background: linear-gradient(255.35deg, #DC3131 0.83%, rgba(255, 79, 79, 0) 108.93%), #FF5E56;
  box-shadow: 0px 0px 24px rgba(234, 0, 41, 0.33);
  border: none;
}
.submit:hover,
.submit:active {
  background: #EA0029;
  box-shadow: 0px 0px 24px rgba(234, 0, 41, 0.33);
}

@media screen and (min-width: 768px) {
  .background {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.3);
  }
  .modal {
    background: transparent;
  }
  .container {
    border-radius: 30px;
    background: #fff;
    width: 50%;
    min-height: unset;
    position: absolute;
    left: 50%;
    top: 120px;
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 32px;
    max-height: 74vh;
    overflow: auto;
  }
  .footer {
    position: static;
    padding: 0;
    margin-top: 40px;
  }
  .wrapper {
    display: flex;
  }
  .ident {
    margin-right: 32px;
  }
}
@media screen and (min-width: 1440px) {
  .container {
    max-width: 552px;
  }
}
</style>