# ProteomeExpert-Data Preprocessing

## Parameters

### Data Preprocessing
Data Preprocessing is used to transform data in accordance with modeling experiment conditions configured in the project. 

The protein matrix analyzed in Data Preprocessing should be uploaded in "Data Console - select your protein file. Choose `select matrix: uploadedProtMatrix` for the following analysis. This module including methods for log transform, missing value substitution,
normalization, batch effect adjust, and replicas treatment. 

- If you need to do a logarithmic transform of the date, select `Log Transform` to accomplish. Here we display **Log2** and **Log10** method. Choose **None** to skip this step. 
- We provide "**1**", "**0**", "**10% of minimum**" or "**minimum**" four ways to `Missing Value Substitution`.Choose **None** to skip this step.
- "**Quantile**", "**Z-score**" and "**Max-Min**" three functions could be used to do `Normalization` of data.

Besides,  we also offer replacement of **Mean** value or **Median** value in the treatment of `Technical Replicas` and `Biological Replicas` data. For unneeded batch, select batch name to `Remove Batch Effect`.

## Tutorial 

1. Download the  test data<br/>For this demo, we will be using a proteins matrix dataset, comprised of 3724 identified proteins from 24 samples. Download the _test_prot.txt_ file from "Online Help - Test data files used for data console - The test protein matrix contains 24 DIA runs"<br/>
2. Upload the test file to "Data Console - select your protein file".<br/>
3. Go to Data Preprocessing and select "uploadedProtMatrix", set parameters as following: <br/>
	- Log Transform : Log2
	- Missing Value Substitution : 0
	- Normalization : Quantile
	- Remove Batch Effect : None
	- Technical Replicas : None
	- Biological Replicas : None<br/>
4. Click on `Submit` ,waiting for the result that would be shown on the right side. 
5. Click on `Download` to get the _PreProcessed.txt_ file.

![image.png](dataprocess1.png)

