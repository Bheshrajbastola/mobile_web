// Routes Middleware
const userRoutes = require("./routes/userRoutes");
// const videoRoute = require("./routes/videoRoute");
const companyRoute = require("./routes/companyRoute");
const jobRoute = require("./routes/jobRoute");

const categoryRoute = require("./routes/categoryRoute");
const eventsRoute = require("./routes/eventRoute");
const todosRoute = require("./routes/todoRoute");

//Socket Connection
const cors = require("cors");

//Database and Express Connection
const express = require("express");
require("./database/connection");

//Initialize Express instance
const app = express();

// Import secret keys and config from dotenv
require("dotenv").config();

//Middlewares
app.use(cors());
app.use(express.json());

//Routes Setup
app.use("/api/auth", userRoutes);

app.use("/api/company", companyRoute);
app.use("/api/job", jobRoute);

app.use("/api/category", categoryRoute);
app.use("/api/event", eventsRoute);
app.use("/api/todo", todosRoute);
app.use("/uploads", express.static("uploads"));

// Server Initialization
const server = app.listen(process.env.PORT, () =>
  console.log(`Server started on ${process.env.PORT}`)
);
