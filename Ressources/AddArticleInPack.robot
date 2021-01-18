*** Settings ***
Library         SeleniumLibrary
*** Variables ***
# ${article 01}    //*[@id="accordionSubList5"]/div[2]/div[1]/div[1]/div[1]/input
# ${article 02}    //*[@id="accordionSubList5"]/div[2]/div[2]/div[1]/div[1]/input
# ${article 03}    div.section-block.custom-scrollbar div.inner-section div.row.content-inventaire:nth-child(2) div.col-information div.listAccordion div.listAccordion-item.listAccordion-item-article:nth-child(5) div.listAccordion-item-body div.listAccordion-item-col div.listAccordionSubItem:nth-child(3) div.listAccordionSubItem-header div.listAccordionSubItem-header-col:nth-child(1) > input.checkbox-table.ng-valid.ng-dirty.ng-touched
# ${article 04}    div.section-block.custom-scrollbar div.inner-section div.row.content-inventaire:nth-child(2) div.col-information div.listAccordion div.listAccordion-item.listAccordion-item-article:nth-child(5) div.listAccordion-item-body div.listAccordion-item-col div.listAccordionSubItem:nth-child(4) div.listAccordionSubItem-header div.listAccordionSubItem-header-col:nth-child(1) > input.checkbox-table.ng-untouched.ng-pristine.ng-valid




*** Keywords ***
Ajout article dans un pack existant
    # [Arguments]    ${article 01}    ${article 02}    ${article 03}    ${article 04} 
	Click Element    //input[@class="checkbox-table ng-untouched ng-pristine ng-valid"]
	Click Element    //input[@class="checkbox-table ng-untouched ng-pristine ng-valid"]
	Click Element    //input[@class="checkbox-table ng-untouched ng-pristine ng-valid"]
	Click Element    //input[@class="checkbox-table ng-untouched ng-pristine ng-valid"]

# Ajout article dans un nouveau pack