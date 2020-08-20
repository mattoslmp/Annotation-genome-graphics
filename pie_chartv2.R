
library(plotly)
library(readr)
library(readr)
#Virus_counts <- read_delim("C:/Users/Leandro/Desktop/Matias_etal/Virus_counts.txt", 
#                           "\t", escape_double = FALSE, trim_ws = TRUE)
#View(Virus_counts)

library(readr)
PFAM <- read_delim("/home/mattos/Desktop/Graphics_R/PFAM", 
                         "\t", escape_double = FALSE, trim_ws = TRUE)

View(PFAM)

m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)


#########################################
#pct <-  round(Virus_pie$`Coding sequences total` *100/sum(Virus_pie$`Coding sequences total`),2)

df2 <-data.frame(PFAM$IPS_ID,PFAM$Seqs)
colnames(df2) <- c("PFAM domains", "Proteins Counts")
as.factor(df2$`PFAM domains`)

phylum_colors <-c ( "#8B008B",	"#FFD700", "#FF1493", "#BDB76B","#696969","#FF4500", "#4169E1", "#99004C","#808080", "#000080", "#7CFC00","orange","#89C5DA","#D1A33D", "#000000", "#228B22",
                    "#673770", "#D2691E", "#800000",  "#D7C1B1", "#689030", "#AD6F3B", "#FFE4B5","#CD9BCD","#D14285")

p1 <- ggplot(df2, aes(x="", y= `Proteins Counts`, fill=`PFAM domains`)) +
  geom_bar(stat="identity", width=2, color="white") + coord_polar("y") +
  theme_classic()  + 
  theme(legend.position="right", legend.text=element_text(size=18), legend.title=element_text(size=18, face = "bold"),
        plot.title = element_text(face = "bold"))  +
    geom_text(aes(y = `Proteins Counts`, label =paste0(round(`Proteins Counts`),"")), color = "white", size=9,
              hjust = 0.5, vjust = 0.5,  position = position_stack(vjust = 0.5)) +
  theme(axis.text.x=element_blank()) +
  scale_fill_manual(values = phylum_colors) +
  theme(plot.title = element_text(hjust=0.5),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title =   element_blank())  +
  guides(fill = guide_legend(reverse = TRUE))  +
  labs(subtitle = "A", size=18, hjust=0.5) +
  theme(plot.subtitle=element_text(size=20, face="bold", color="black"))

######################################################################
library(plotly)
library(readr)
library(readr)
#Virus_counts <- read_delim("C:/Users/Leandro/Desktop/Matias_etal/Virus_counts.txt", 
#                           "\t", escape_double = FALSE, trim_ws = TRUE)
#View(Virus_counts)

library(readr)
SMART <- read_delim("/home/mattos/Desktop/Graphics_R/SMART", 
                    "\t", escape_double = FALSE, trim_ws = TRUE)

View(SMART)

m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)


#########################################
#pct <-  round(Virus_pie$`Coding sequences total` *100/sum(Virus_pie$`Coding sequences total`),2)

df2 <-data.frame(SMART$IPS_ID,SMART$Seqs)
colnames(df2) <- c("SMART domains", "Proteins Counts")
as.factor(df2$`SMART domains`)

phylum_colors <-c ( "#8B008B",	"#FFD700", "#FF1493", "#BDB76B","#696969","#FF4500", "#4169E1", "#99004C","#808080", "#000080", "#7CFC00","orange","#89C5DA","#D1A33D", "#000000", "#228B22",
                    "#673770", "#D2691E", "#800000",  "#D7C1B1", "#689030", "#AD6F3B", "#FFE4B5","#CD9BCD","#D14285")

p2 <- ggplot(df2, aes(x="", y= `Proteins Counts`, fill=`SMART domains`)) +
  geom_bar(stat="identity", width=2, color="white") + coord_polar("y") +
  theme_classic()  + 
  theme(legend.position="right", legend.text=element_text(size=18), legend.title=element_text(size=18, face = "bold"),
        plot.title = element_text(face = "bold"))  +
  geom_text(aes(y = `Proteins Counts`, label =paste0(round(`Proteins Counts`),"")), color = "white", size=9,
            hjust = 0.5, vjust = 0.5,  position = position_stack(vjust = 0.5)) +
  theme(axis.text.x=element_blank()) +
  scale_fill_manual(values = phylum_colors) +
  theme(plot.title = element_text(hjust=0.5),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title =   element_blank())  +
  guides(fill = guide_legend(reverse = TRUE))  +
  labs(subtitle = "B", size=18, hjust=0.5) +
  theme(plot.subtitle=element_text(size=20, face="bold", color="black"))
####################################
library(readr)
SUPERFAMILY <- read_delim("/home/mattos/Desktop/Graphics_R/SUPERFAMILY", 
                          "\t", escape_double = FALSE, trim_ws = TRUE)

View(SUPERFAMILY)

m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)


#########################################
#pct <-  round(Virus_pie$`Coding sequences total` *100/sum(Virus_pie$`Coding sequences total`),2)

df2 <-data.frame(SUPERFAMILY$IPS_ID,SUPERFAMILY$Seqs)
colnames(df2) <- c("SUPERFAMILY domains", "Proteins Counts")
as.factor(df2$`SUPERFAMILY domains`)

phylum_colors <-c ( "#8B008B",	"#FFD700", "#FF1493", "#BDB76B","#696969","#FF4500", "#4169E1", "#99004C","#808080", "#000080", "#7CFC00","orange","#89C5DA","#D1A33D", "#000000", "#228B22",
                    "#673770", "#D2691E", "#800000",  "#D7C1B1", "#689030", "#AD6F3B", "#FFE4B5","#CD9BCD","#D14285")

p3 <- ggplot(df2, aes(x="", y= `Proteins Counts`, fill=`SUPERFAMILY domains`)) +
  geom_bar(stat="identity", width=2, color="white") + coord_polar("y") +
  theme_classic()  + 
  theme(legend.position="right", legend.text=element_text(size=18), legend.title=element_text(size=18, face = "bold"),
        plot.title = element_text(face = "bold"))  +
  geom_text(aes(y = `Proteins Counts`, label =paste0(round(`Proteins Counts`),"")), color = "white", size=9,
            hjust = 0.5, vjust = 0.5,  position = position_stack(vjust = 0.5)) +
  theme(axis.text.x=element_blank()) +
  scale_fill_manual(values = phylum_colors) +
  theme(plot.title = element_text(hjust=0.5),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title =   element_blank())  +
  guides(fill = guide_legend(reverse = TRUE))  +
  labs(subtitle = "C", size=18, hjust=0.5) +
  theme(plot.subtitle=element_text(size=20, face="bold", color="black"))

require(grid)
require(gridExtra)
#height <- 10
pfinal  <-grid.arrange(p1, p2,p3, 
             ncol = 1, nrow = 3)
grid.draw(pfinal) 
ggsave(pfinal,file="Fig4.png",height=44, width=28, units='in', dpi=400)
g
