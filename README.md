# SaliencyEvaluation
use precision, recall and F-measure to evaluate your saliency detection method

#Notation :
A is the ground truth map, B is the result map.
#Equation : 
1.Precision = (A∩B/B) * 100%
2.Recall = (A∩B/A) * 100%
3.F-measure = ((1+beta^2) * Precision + Recall)/(beta^2 * Precision + Recall)
