const mongoose = require("mongoose");
const User = require("../model/userModel");

const url =
"mongodb+srv://swikarbaastola:GwHHqSHQto0PwnZI@cluster0.zzuqibu.mongodb.net/?retryWrites=true&w=majority";

beforeAll(async () => {
  await mongoose.connect(url, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  });
});

afterAll(async () => {
  await mongoose.connection.close();
});

describe("Testing user schema", () => {
  //the code below is for insert testing
  it("Add user testing", () => {
    const userData = {
      username: "raj101",
      email: "bheshraj102@gmail.com",
      password: "password",
      firstName: "Test101",
      lastName: "TestLast",
      gender: "Male",
      type: "Applicant",
      phone: "1234567890",
    };
    return User.create(userData).then((user_ret) => {
      expect(user_ret.username).toEqual("raj101");
    });
  });

  //testing if the update is working
  it("Updating the user testing", async () => {
    const status = await User.updateOne(
      { username: "raju101" },
      {
        username: "raj102",
        password: "newpassword",
      }
    );
    expect(status.ok);
  });

  // delete testing;
  it("Deleting the user teting", async () => {
    const status = await User.findOneAndDelete({ username: "raj101" });
    expect(status.ok);
  });

  //the below code is for update testing here
});
