import React from "react";
import { AiOutlineUser } from "react-icons/ai";
import { FiClock } from "react-icons/fi";
import { Link } from "react-router-dom";

function EventsBar({
  isOpen,
  openModal,
  closeModel,
  loading,
  events,
}) {
  var monthNames = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  return (
    <div className="eventsBar" style={{ width: "30%" }}>
      <div className="EventsContainer">
        <div className="headTitleSection">
          <h5 className="titleStyle">Your events</h5>
          <button className="viewAll" onClick={() => openModal()}>
            Add Event
          </button>
        </div>
        <div className="events">
          {loading ? (
            <div>Loading...</div>
          ) : (
            events.map((event) => {
              console.log(event);
              var date;
              try {
                date = new Date(event.event.date) ?? new Date();
              } catch (err) {
                date = new Date();
              }
              // const date = new Date(event.event.date) ?? new Date();
              let dt = date.getDate();
              let day = date.toLocaleString("en-us", { weekday: "long" });
              let month = monthNames[date.getMonth()];

              return (
                <div className="event">
                  <div className="calendar">
                    <div className="calendar-body">
                      <span className="month" style={{ width: "100%" }}>
                        {month}
                      </span>
                      <span className="date">{dt}</span>
                      <span className="day">{day}</span>
                    </div>
                  </div>
                  <div className="event-details">
                    <p className="event-name">{event.event.title}</p>
                    <div className="event-participant">
                      {" "}
                      <AiOutlineUser /> Bhesh Raj Bastola
                    </div>
                    <div className="event-time">
                      {" "}
                      <FiClock /> {event.event.startTime}-{event.event.endTime}
                    </div>
                  </div>

                </div>
              );
            })
          )}
        </div>
      </div>
    </div>
  );
}

export default EventsBar;

