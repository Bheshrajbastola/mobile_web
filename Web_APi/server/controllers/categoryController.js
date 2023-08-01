const express = require("express");
const router = new express.Router();
const Category = require("../model/CategoryModel");
const multer = require("multer");
const Job = require("../model/JobModel");

const storage = multer.diskStorage({
  destination: "./uploads/images/category",
  filename: (req, file, cb) => {
    cb(null, `${file.fieldname}-${Date.now()}${file.originalname}`);
  },
});

module.exports.uploadCatImage = multer({
  storage: storage,
  fileFilter: (req, file, cb) => {
    if (!file.originalname.match(/\.(jpg|jpeg|png|gif)$/i)) {
      return cb(new Error("Please upload an image file"));
    }
    cb(null, true);
  },
  limits: {
    fileSize: 1024 * 1024 * 5,
  },
});

module.exports.addCategory = async (req, res, next) => {
  this.uploadCatImage.single("image")(req, res, async (err) => {
    if (err) {
      return res.status(400).json({
        error: err.message,
      });
    }
    try {
      const { title, description } = req.body;
      const category = await Category.create({
        title: title,
        image: req.file.path,
        description: description,
      });
      res.status(200).json({
        message: "Category added successfully",
        category,
      });
    } catch (e) {
      console.log(e);
    }
  });
};

//get count of jobs in each category
// module.exports.getCategoryCount = async (req, res, next) => {
//   try {
//     const categories = await Category.find({});
//     const jobs = await Job.find({});
//     const jobsInCategory = [];
//     categories.forEach((category) => {
//       const jobsInCategoryCount = jobs.filter((job) =>
//         job.sector.equals(category._id)
//       );
//       jobsInCategory.push({
//         category: category,
//         jobs: jobsInCategoryCount.length,
//       });
//     });
//     res.status(200).json({
//       success: true,
//       data: jobsInCategory,
//     });
//   } catch (e) {
//     console.log(e);
//   }
// };


// module.exports.getCategoryCount = async (req, res, next) => {
//   try {
//     // Fetch all categories from the database
//     const categories = await Category.find({});

//     // Fetch all jobs from the database
//     const jobs = await Job.find({});

//     // Create an array to store the results
//     const jobsInCategory = [];

//     // Loop through each category
//     for (const category of categories) {
//       // Filter the jobs to get only those belonging to the current category
//       const jobsInCategoryCount = jobs.filter((job) =>
//         job.sector && job.sector.equals(category._id)
//       );

//       // Push the category and job count into the result array
//       jobsInCategory.push({
//         category: category,
//         jobs: jobsInCategoryCount.length,
//       });
//     }

//     // Send the result as a JSON response to the client
//     res.status(200).json({
//       success: true,
//       data: jobsInCategory,
//     });
//   } catch (e) {
//     // If an error occurs, handle it properly and send an error response
//     console.error(e);
//     res.status(500).json({
//       success: false,
//       message: "Internal server error",
//     });
//   }
// };


module.exports.getCategoryCount = async (req, res, next) => {
  try {
    const categories = await Category.find({});
    const jobs = await Job.find({});
    const jobsInCategory = [];
    
    categories.forEach((category) => {
      const jobsInCategoryCount = jobs.filter((job) => {
        // Check if job.sector and category._id are defined before using equals
        if (job.sector && category._id) {
          return job.sector.equals(category._id);
        }
        return false;
      });
      
      jobsInCategory.push({
        category: category,
        jobs: jobsInCategoryCount.length,
      });
    });
    
    res.status(200).json({
      success: true,
      data: jobsInCategory,
    });
  } catch (e) {
    console.log(e);
  }
};





module.exports.getCategories = async (req, res, next) => {
  try {
    const categories = await Category.find({});
    res.status(200).json({
      success: true,
      data: categories,
    });
  } catch (e) {
    console.log(e);
  }
};
