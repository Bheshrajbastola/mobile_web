import React from "react";
import {
  ColoredSlogan,
  ContentHolder,
  FormContainer,
  HeroBg,
  HeroContainer,
  JobSearch,
  LocationFilter,
  SearchBtn,
  SearchContainer,
  Slogan,
  SloganSubtext,
  TextContent,
} from "./seekerHeroElements";
import "./style.css";

function SeekerHero() {
  return (
    <HeroContainer>
  
      <ContentHolder>
        <TextContent>
          <Slogan>
            Get The <ColoredSlogan>Right Job</ColoredSlogan> {"\n"} You Deserve
          </Slogan>
          <SloganSubtext style={{ color: "white" }}>
            100,000 jobs listed here! Your dream Job is Waiting
          </SloganSubtext>
        </TextContent>
        <FormContainer>
          <SearchContainer>
            <JobSearch placeholder="Job title or keyword" type="text" />
            <LocationFilter>
              <option value="Place 1">Place One</option>
              <option value="Place 2">Place Two</option>
              <option value="Place 3">Place Three</option>
            </LocationFilter>
            <SearchBtn>Search</SearchBtn>
          </SearchContainer>
        </FormContainer>
      </ContentHolder>
    </HeroContainer>
  );
}

export default SeekerHero;
