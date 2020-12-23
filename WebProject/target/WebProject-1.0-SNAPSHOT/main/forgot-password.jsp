<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quên mật khẩu</title>
    <link
      rel="shortcut icon"
      href="./images/Jordan1-Retro.jpg"
      type="image/x-icon"
    />
    <style>
      body {
        background-color: #e7e7e7;
      }
      .logo {
        text-align: center;
        margin: 3rem 0 2rem;
        color: #00b61e;
        font-size: 50px;
      }
      .container {
        width: 700px;
        margin: auto;
      }
      form {
        position: relative;
        padding: 2rem;
        display: flex;
        flex-direction: column;
        background-color: #fff;
        box-shadow: 0px 0px 10px 2px #c9c9c9;
        /* align-items: flex-start; */
        /* align-items: center; */
        width: 100%;
      }
      label {
        font-weight: 200;
        color: #333333;
      }
      label span {
        color: red;
        margin-right: 10px;
      }
      input {
        outline: none;
        border: 1px solid #c9c9c9;
        margin: 1rem 0;
        width: 100%;
        height: 40px;
        padding-left: 0.5rem;
      }
      button {
        height: 40px;
        width: 100px;
        background-color: #00b61e;
        color: white;
        border: 1px solid transparent;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2 class="logo">SKED</h2>
      <form>
        <div style="font-size: 30px">Quên mật khẩu</div>
        <p style="font-weight: 100; font-style: italic">
          Bạn quên mật khẩu? Đừng lo lắng! Gửi cho chúng tôi email bạn đăng kí.
          Chúng tôi sẽ gửi bạn link để cài lại mật khẩu
        </p>
        <div>
          <label for=""> <span>*</span>Địa chỉ email</label><br />
          <input type="email" required />
        </div>
        <button>Xác nhận</button>
      </form>
      <div style="margin: 1rem">
        <a style="color: rgb(5, 84, 231)" href="../index.jsp"
          >Quay về trang chủ</a
        >
      </div>
    </div>
  </body>
</html>
