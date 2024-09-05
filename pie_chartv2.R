### Script for plotting results from Omicsbox
## Author: Please cite: Leandro de Mattos Pereira

# Load required libraries
library(ggplot2)
library(readr)
library(plotly)
library(grid)
library(gridExtra)

# Define colors for plotting
phylum_colors <- c("#8B008B", "#FFD700", "#FF1493", "#BDB76B", "#696969", "#FF4500", "#4169E1", "#99004C", "#808080", 
                   "#000080", "#7CFC00", "orange", "#89C5DA", "#D1A33D", "#000000", "#228B22", "#673770", "#D2691E", 
                   "#800000", "#D7C1B1", "#689030", "#AD6F3B", "#FFE4B5", "#CD9BCD", "#D14285")

# Load PFAM data and plot
PFAM <- read_delim("/home/mattos/Desktop/Graphics_R/PFAM", "\t", escape_double = FALSE, trim_ws = TRUE)
df_pfam <- data.frame(PFAM$IPS_ID, PFAM$Seqs)
colnames(df_pfam) <- c("PFAM domains", "Proteins Counts")

p1 <- ggplot(df_pfam, aes(x = "", y = `Proteins Counts`, fill = `PFAM domains`)) +
  geom_bar(stat = "identity", width = 2, color = "white") +
  coord_polar("y") +
  theme_classic() +
  geom_text(aes(label = paste0(round(`Proteins Counts`), "")), color = "white", size = 9, position = position_stack(vjust = 0.5)) +
  scale_fill_manual(values = phylum_colors) +
  theme(axis.text.x = element_blank(),
        axis.line = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        plot.title = element_text(hjust = 0.5, face = "bold"),
        legend.position = "right",
        legend.text = element_text(size = 18),
        legend.title = element_text(size = 18, face = "bold"),
        plot.subtitle = element_text(size = 20, face = "bold", color = "black")) +
  labs(subtitle = "A")

# Load SMART data and plot
SMART <- read_delim("/home/mattos/Desktop/Graphics_R/SMART", "\t", escape_double = FALSE, trim_ws = TRUE)
df_smart <- data.frame(SMART$IPS_ID, SMART$Seqs)
colnames(df_smart) <- c("SMART domains", "Proteins Counts")

p2 <- ggplot(df_smart, aes(x = "", y = `Proteins Counts`, fill = `SMART domains`)) +
  geom_bar(stat = "identity", width = 2, color = "white") +
  coord_polar("y") +
  theme_classic() +
  geom_text(aes(label = paste0(round(`Proteins Counts`), "")), color = "white", size = 9, position = position_stack(vjust = 0.5)) +
  scale_fill_manual(values = phylum_colors) +
  theme(axis.text.x = element_blank(),
        axis.line = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        plot.title = element_text(hjust = 0.5, face = "bold"),
        legend.position = "right",
        legend.text = element_text(size = 18),
        legend.title = element_text(size = 18, face = "bold"),
        plot.subtitle = element_text(size = 20, face = "bold", color = "black")) +
  labs(subtitle = "B")

# Load SUPERFAMILY data and plot
SUPERFAMILY <- read_delim("/home/mattos/Desktop/Graphics_R/SUPERFAMILY", "\t", escape_double = FALSE, trim_ws = TRUE)
df_superfamily <- data.frame(SUPERFAMILY$IPS_ID, SUPERFAMILY$Seqs)
colnames(df_superfamily) <- c("SUPERFAMILY domains", "Proteins Counts")

p3 <- ggplot(df_superfamily, aes(x = "", y = `Proteins Counts`, fill = `SUPERFAMILY domains`)) +
  geom_bar(stat = "identity", width = 2, color = "white") +
  coord_polar("y") +
  theme_classic() +
  geom_text(aes(label = paste0(round(`Proteins Counts`), "")), color = "white", size = 9, position = position_stack(vjust = 0.5)) +
  scale_fill_manual(values = phylum_colors) +
  theme(axis.text.x = element_blank(),
        axis.line = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        plot.title = element_text(hjust = 0.5, face = "bold"),
        legend.position = "right",
        legend.text = element_text(size = 18),
        legend.title = element_text(size = 18, face = "bold"),
        plot.subtitle = element_text(size = 20, face = "bold", color = "black")) +
  labs(subtitle = "C")

# Arrange the three plots into a single figure
pfinal <- grid.arrange(p1, p2, p3, ncol = 1, nrow = 3)

# Save the final plot to a file
ggsave(pfinal, file = "Fig4.png", height = 44, width = 28, units = 'in', dpi = 400)
