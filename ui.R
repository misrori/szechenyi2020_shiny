library(shiny)
library(markdown)
library(plotly)

navbarPage(
            tags$head(
              tags$link(rel = "stylesheet", type = "text/css", href = "bootstrap.css")
            ),
            
           "Széchenyi 2020",
           tabPanel("Leírás",
                    verbatimTextOutput("summary")
           ),
           tabPanel("Nyertes pályázatok",
                    dataTableOutput("table")
           ),
           tabPanel("Elemzés",
                    sidebarLayout(
                      sidebarPanel(
                        selectInput("group_by", label = "Összegzés", choices = c("","Nyertes"="nyertes", "Város"= "varos", "Forrás"= "forras", "Operatív program" = "operativ_program", "Program"= "program","Év" = "ev",
                                                                                 "Jogállás" ="Jogallas", "Megye"= "Megye", "Kistérség"="Kisterseg", 
                                                                                 "Hátrányos besorolás"= "tipus", 'Roma önkormányzat'='roma_onkormanyzat'), selected = ""), 
                        selectInput("group_by2", label = "További összegzés", choices = c("","Nyertes"="nyertes", "Város"= "varos", "Forrás"= "forras", "Operatív program" = "operativ_program", "Program"= "program","Év" = "ev",
                                                                                 "Jogállás" ="Jogallas", "Megye"= "Megye", "Kistérség"="Kisterseg", 
                                                                                 "Hátrányos besorolás"= "tipus", 'Roma önkormányzat'='roma_onkormanyzat'), selected = ""), 
                        selectInput("group_by3", label = "További összegzés", choices = c("","Nyertes"="nyertes", "Város"= "varos", "Forrás"= "forras", "Operatív program" = "operativ_program", "Program"= "program","Év" = "ev",
                                                                                 "Jogállás" ="Jogallas", "Megye"= "Megye", "Kistérség"="Kisterseg", 
                                                                                 "Hátrányos besorolás"= "tipus", 'Roma önkormányzat'='roma_onkormanyzat'), selected = "")
                      ),
                      mainPanel(
                        dataTableOutput("eredmeny")
                      )
                    )
           ),
           tabPanel("Grafikonok",
                    sidebarLayout(
                      sidebarPanel(
                        selectInput("plot_osszegzo", label = "Összegzés", choices = c("", "Forrás"= "forras", "Operatív program" = "operativ_program", "Program"= "program","Év" = "ev",
                                                                                 "Jogállás" ="Jogallas", "Megye"= "Megye", "Kistérség"="Kisterseg", 
                                                                                 "Hátrányos besorolás"= "tipus", 'Roma önkormányzat'='roma_onkormanyzat'), selected = "operativ_program")
                        
                        
                      ),
                      mainPanel(
                        plotlyOutput('summary_plot')
                      )
                      
                      
                    )
                    
           )#Grafikon_tab
           
           
           )#nav
         
           



