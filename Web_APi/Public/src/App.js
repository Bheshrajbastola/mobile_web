import { useState } from "react";
import { Route, Routes } from "react-router-dom";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import EmailVerified from "./components/Common/Email/EmailVerified";
import ChatProvider from "./context/ChatProvider";
import Auth from "./pages/Auth";
import Employer from "./pages/Employer";
import Seeker from "./pages/Seeker";
import SetAvatar from "./pages/SetAvatar";
import Code_sent from "./pages/code_sent";
import Home from "./pages/index";


function App() {
  const [inCall, setInCall] = useState(false);

  return (
    <>
      <ChatProvider>
        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route path="/auth/*" element={<Auth />} />
          <Route path="/verified" element={<EmailVerified />} />
          <Route path="/setAvatar" element={<SetAvatar />} />
          
    

          <Route exact path="/employer/*" element={<Employer />} />

          <Route exact path="/applicant/*" element={<Seeker />} />
          <Route exact path="/codesent" element={<Code_sent />} />
        </Routes>

      </ChatProvider>
      
      <ToastContainer autoClose={500} />
    </>
  );
}

export default App;
