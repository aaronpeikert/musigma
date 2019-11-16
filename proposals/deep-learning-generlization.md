---
title: Understanding Deep Learning Requires Rethinking Generalization
author: Zhang Bengio Hardt Recht Vinyals 
year: 2017
format: paper
abstract: |
  Despite their massive size, successful deep artificial neural networks can exhibit a remarkably small difference between training and test performance. Conventional wisdom attributes small generalization error either to properties of the model family, or to the regularization techniques used during training. Through extensive systematic experiments, we show how these traditional approaches fail to explain why large neural networks generalize well in practice. Specifically, our experiments establish that state-of-the-art convolutional networks for image classification trained with stochastic gradient methods easily fit a random labeling of the training data. This phenomenon is qualitatively unaffected by explicit regularization, and occurs even if we replace the true images by completely unstructured random noise. We corroborate these experimental findings with a theoretical construction showing that simple depth two neural networks already have perfect finite sample expressivity as soon as the number of parameters exceeds the number of data points as it usually does in practice. We interpret our experimental findings by comparison with traditional models.
link: https://arxiv.org/pdf/1611.03530.pdf
time: 30min
---

This paper is a follow up upon th MDL-Principle paper because it extens our discussion of complexity of models but moves beyond any classical models onto deep neural networks. They end with „In this work we presented a simple experimental framework for defining and understanding a notion
of effective capacity of machine learning models.“ It is mainly authored by Google but the style is not to tecnical instead it is concise and easy to digest. It won the best paper award at ICLR 2017.
