import {
  ColoredSlogan,
  Slogan,
  TextContent,
} from "../SeekerHero/seekerHeroElements";
import { CardsContainer, SolutionsContainer } from "./SolutionComponents";

import axios from "axios";
import { useEffect, useState } from "react";
import { getCategories, host } from "../../../../utils/APIRoutes";
import "../../../style.css";

import { Center } from "@chakra-ui/react";
import Tilt from "react-tilt";
import { v4 as uuid } from "uuid";

function SeekerSolutions() {
  const [categories, setCategories] = useState([]);
  const [ready, setIsReady] = useState(false);

  useEffect(() => {
    axios.get(getCategories).then((result) => {
      setCategories(result.data.data);
      setIsReady(true);
    });
  }, []);
  return (
    <SolutionsContainer>
      <TextContent>
        <Slogan>
          One Platform <br /> Many <ColoredSlogan>Solutions</ColoredSlogan>
        </Slogan>
      </TextContent>
      <CardsContainer>
        {!ready ? (
          <div style={{ margin: "auto" }}>
            <div className="loading-wrapper">
              <div className="loader">
                <div className="loading-circle">s</div>
              </div>
            </div>
          </div>
        ) : (
          categories.slice(0, 6).map(
            (category) => (
              <Tilt
                className="cardTest"
                id={uuid()}
                style={{ marginBottom: "1rem" }}
                options={{
                  scale: 1,
                  speed: 500,
                  reverse: true,
                  max: 30,
                  glare: true,
                  maxGlare: 1,
                  easing: "cubic-bezier(.03,.98,.52,.99)",
                  prespective: 500,
                }}
              >
                <Center>
                  <div className="crdImg">
                    <Center>
                      <img
                        src={host + "/" + category.category.image}
                        class="proImg"
                        alt="srh"
                      />
                    </Center>
                  </div>
                </Center>

                <h2 class="name">{category.category.title}</h2>
                <p>{category.jobs} Jobs Available</p>
                <button>Explore Now</button>
              </Tilt>
            ),
            import("./glass")
          )
        )}
      </CardsContainer>
    </SolutionsContainer>
  );
}


export default SeekerSolutions;





// import React, { useEffect, useState } from "react";
// import axios from "axios";
// import { getCategories, host, addCategory } from "../../../../utils/APIRoutes";
// import { SolutionsContainer } from "./SolutionComponents";
// import "../../../style.css";

// function SeekerSolutions() {
//   const [categories, setCategories] = useState([]);
//   const [ready, setIsReady] = useState(false);
//   const [formData, setFormData] = useState({
//     title: "",
//     image: null,
//     description: "",
//   });

//   useEffect(() => {
//     axios.get(getCategories).then((result) => {
//       setCategories(result.data.data);
//       setIsReady(true);
//     });
//   }, []);

//   const handleChange = (event) => {
//     const { name, value } = event.target;
//     setFormData({ ...formData, [name]: value });
//   };

//   const handleFileChange = (event) => {
//     const file = event.target.files[0];
//     setFormData({ ...formData, image: file });
//   };

//   const handleSubmit = (event) => {
//     event.preventDefault();

//     const formDataToSend = new FormData();
//     formDataToSend.append("title", formData.title);
//     formDataToSend.append("image", formData.image);
//     formDataToSend.append("description", formData.description);

//     axios.post(addCategory, formDataToSend).then((response) => {
//       // Handle the response, e.g., show success message or update the category list
//       // For example, you can fetch the updated categories list again:
//       axios.get(getCategories).then((result) => {
//         setCategories(result.data.data);
//       });
//     });
//   };

//   return (
//     <SolutionsContainer>
//       {/* Text content and slogan */}
//       {/* ... */}

//       {/* Form to add a new category */}
//       <form onSubmit={handleSubmit}>
//         <input
//           type="text"
//           name="title"
//           placeholder="Category Title"
//           value={formData.title}
//           onChange={handleChange}
//         />
//         <input
//           type="file"
//           name="image"
//           accept=".jpg,.jpeg,.png,.gif"
//           onChange={handleFileChange}
//         />
//         <textarea
//           name="description"
//           placeholder="Category Description"
//           value={formData.description}
//           onChange={handleChange}
//         />
//         <button type="submit">Add Category</button>
//       </form>

//       {/* Display categories */}
//       <div>
//         {!ready ? (
//           <div style={{ margin: "auto" }}>
//             <div className="loading-wrapper">
//               <div className="loader">
//                 <div className="loading-circle">s</div>
//               </div>
//             </div>
//           </div>
//         ) : (
//           categories.slice(0, 6).map((category) => (
//             // Display category cards
//             <div key={category._id}>
//               {/* ... */}
//               {/* You can render the category cards here */}
//             </div>
//           ))
//         )}
//       </div>
//     </SolutionsContainer>
//   );
// }

// export default SeekerSolutions;
