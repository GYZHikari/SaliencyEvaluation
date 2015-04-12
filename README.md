# SaliencyEvaluation
use precision, recall and F-measure to evaluate your saliency detection method

#Notation : A is the ground truth map, B is the result map.
#Equation : 
Precision = (A∩B/B) * 100%
Recall = (A∩B/A) * 100%
F-measure = ((1+beta^2) * Precision + Recall)/(beta^2 * Precision + Recall)