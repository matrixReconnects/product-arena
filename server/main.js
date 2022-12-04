const express = require("express");
const bodyParser = require("body-parser");

const app = express();
const port = 3000;

const user1Email = "career@tech387.com";
const user1Password = "Pass123!";

app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.post("/api/signin", (req, res) => {
  // console.log("REQ", req);
  const email = req.body.email;
  console.log("emaillll:", email);
  const password = req.body.password;

  if (email == user1Email) {
    if (password == user1Password) {
      console.log("true");
      return res.status(200).send(true);
    } else {
      return res.status(400).json({ msg: "Pogresan email ili password" });
    }
  } else {
    return res.status(400).json({ msg: "Pogresan email ili password" });
  }
});

app.listen(port, () => {
  console.log(`Backend listening on port ${port}`);
});
