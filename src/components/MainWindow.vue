<template>
  <div>
    <Popup v-if="isPopupVisible" @closePopup="showPopup">
      <Input />
    </Popup>
    <div class="main">
      <button class="big-button contrast-button" @click="showPopup">
        Налоговый вычет
      </button>
    </div>
  </div>
</template>

<script>
import Popup from "./modal/PopupWindow";
import Input from "./modal/ModalInput";

export default {
  components: {
    Popup,
    Input,
  },
  data() {
    return {
      isPopupVisible: false,
    };
  },
  methods: {
    showPopup() {
      this.isPopupVisible = !this.isPopupVisible;
    },
  },
};
</script>

<style>
.main {
  height: 100vh;
  background: linear-gradient(
      255.35deg,
      #dc3131 0.83%,
      rgba(255, 244, 244, 0) 108.93%
    ),
    #ff5e56;
  display: flex;
  justify-content: center;
  align-items: center;
}
.big-button {
  height: 40px;
  padding: 12px 24px;
  border-radius: 6px;
  color: #fff;
  font-weight: 500;
  font-size: 12px;
  cursor: pointer;
}
.contrast-button {
  background-color: transparent;
  border: 1px solid #fff;
}
.contrast-button:hover {
  color: #000;
  background-color: #fff;
}
@media screen and (min-width: 768px) {
  .big-button {
    height: 56px;
  }
}
</style>