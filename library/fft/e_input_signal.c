/********************************************************************************

			Fast Fourier transform module
			August 2007: first version Jonathan Besuchet


This file is part of the e-puck library license.
See http://www.e-puck.org/index.php?option=com_content&task=view&id=18&Itemid=45

(c) 2007 Jonathan Besuchet

Robotics system laboratory http://lsro.epfl.ch
Laboratory of intelligent systems http://lis.epfl.ch
Swarm intelligent systems group http://swis.epfl.ch
EPFL Ecole polytechnique federale de Lausanne http://www.epfl.ch

**********************************************************************************/

/*! \file
 * \ingroup fft
 * \brief Allocate memory and initialize the sigCmpx array
 *
 * sigCmpx is the main array in which the FFT will be done. So
 * you must to fill this array with your values to perform the FFT.
 * \n \n This array has the following size: 64, 128, 256, 512 depending
 * the choice you have made in fft.h
 * \author Code & doc: Jonathan Besuchet
 */

#include <dsp.h>
#include "e_fft.h"

#if (FFT_BLOCK_LENGTH == 64)
fractcomplex sigCmpx[FFT_BLOCK_LENGTH]  __attribute__ ((section (".ydata, data, ymemory"), aligned (FFT_BLOCK_LENGTH * 2 *2))) =
{
	0,		9514,	5857,	-5909,	-9495,	62,		9533,	5806,
	-5959,	-9475,	125,	9552,	5755,	-6010,	-9455,	188,
	9570,	5703,	-6060,	-9435,	251,	9588,	5651,	-6110,
	-9413,	314,	9606,	5599,	-6160,	-9392,	377,	9623,
	5547,	-6209,	-9370,	440,	9640,	5495,	-6258,	-9348,
	502,	9657,	5442,	-6307,	-9326,	565,	9673,	5389,
	-6356,	-9303,	628,	9689,	5336,	-6404,	-9279,	691,
	9704,	5283,	-6452,	-9256,	754,	9719,	5229,	-6500
};
#endif
#if (FFT_BLOCK_LENGTH == 128)
fractcomplex sigCmpx[FFT_BLOCK_LENGTH]  __attribute__ ((section (".ydata, data, ymemory"), aligned (FFT_BLOCK_LENGTH * 2 *2))) =
{
	0,		9514,	5857,	-5909,	-9495,	62,		9533,	5806,
	-5959,	-9475,	125,	9552,	5755,	-6010,	-9455,	188,
	9570,	5703,	-6060,	-9435,	251,	9588,	5651,	-6110,
	-9413,	314,	9606,	5599,	-6160,	-9392,	377,	9623,
	5547,	-6209,	-9370,	440,	9640,	5495,	-6258,	-9348,
	502,	9657,	5442,	-6307,	-9326,	565,	9673,	5389,
	-6356,	-9303,	628,	9689,	5336,	-6404,	-9279,	691,
	9704,	5283,	-6452,	-9256,	754,	9719,	5229,	-6500,
	-9232,	816,	9734,	5175,	-6548,	-9207,	879,	9748,
	5122,	-6595,	-9183,	942,	9762,	5067,	-6643,	-9158,
	1004,	9775,	5013,	-6689,	-9132,	1067,	9788,	4959,
	-6736,	-9106,	1129,	9801,	4904,	-6782,	-9080,	1192,
	9813,	4849,	-6829,	-9054,	1254,	9825,	4794,	-6874,
	-9027,	1316,	9836,	4739,	-6920,	-8999,	1379,	9848,
	4683,	-6965,	-8972,	1441,	9858,	4627,	-7010,	-8944
};
#endif
#if (FFT_BLOCK_LENGTH == 256)
fractcomplex sigCmpx[FFT_BLOCK_LENGTH]  __attribute__ ((section (".ydata, data, ymemory"), aligned (FFT_BLOCK_LENGTH * 2 *2))) =
{
	0,		9514,	5857,	-5909,	-9495,	62,		9533,	5806,
	-5959,	-9475,	125,	9552,	5755,	-6010,	-9455,	188,
	9570,	5703,	-6060,	-9435,	251,	9588,	5651,	-6110,
	-9413,	314,	9606,	5599,	-6160,	-9392,	377,	9623,
	5547,	-6209,	-9370,	440,	9640,	5495,	-6258,	-9348,
	502,	9657,	5442,	-6307,	-9326,	565,	9673,	5389,
	-6356,	-9303,	628,	9689,	5336,	-6404,	-9279,	691,
	9704,	5283,	-6452,	-9256,	754,	9719,	5229,	-6500,
	-9232,	816,	9734,	5175,	-6548,	-9207,	879,	9748,
	5122,	-6595,	-9183,	942,	9762,	5067,	-6643,	-9158,
	1004,	9775,	5013,	-6689,	-9132,	1067,	9788,	4959,
	-6736,	-9106,	1129,	9801,	4904,	-6782,	-9080,	1192,
	9813,	4849,	-6829,	-9054,	1254,	9825,	4794,	-6874,
	-9027,	1316,	9836,	4739,	-6920,	-8999,	1379,	9848,
	4683,	-6965,	-8972,	1441,	9858,	4627,	-7010,	-8944,
	1503,	9869,	4572,	-7055,	-8916,	1565,	9879,	4516,
	-7099,	-8887,	1627,	9888,	4459,	-7143,	-8858,	1690,
	9897,	4403,	-7187,	-8828,	1751,	9906,	4346,	-7231,
	-8799,	1813,	9914,	4290,	-7274,	-8769,	1875,	9922,
	4233,	-7317,	-8738,	1937,	9930,	4176,	-7360,	-8708,
	1999,	9937,	4119,	-7402,	-8676,	2060,	9944,	4061,
	-7445,	-8645,	2122,	9950,	4004,	-7486,	-8613,	2183,
	9956,	3946,	-7528,	-8581,	2244,	9962,	3888,	-7569,
	-8549,	2306,	9967,	3830,	-7610,	-8516,	2367,	9972,
	3772,	-7651,	-8483,	2428,	9977,	3713,	-7691,	-8449,
	2489,	9981,	3655,	-7731,	-8415,	2550,	9984,	3596,
	-7771,	-8381,	2610,	9988,	3538,	-7810,	-8347,	2671,
	9990,	3479,	-7850,	-8312,	2732,	9993,	3420,	-7888,
	-8277,	2792,	9995,	3361,	-7927,	-8241,	2852,	9997,
	3301,	-7965,	-8206,	2913,	9998,	3242,	-8003,	-8169,
	2973,	9999,	3182,	-8040,	-8133,	3033,	9999,	3123,
	-8078,	-8096,	3093,	9999,	3063,	-8115,	-8059,	3152,
	9999,	3003,	-8151,	-8022,	3212,	9998,	2943,	-8188,
	-7984,	3272,	9997,	2883,	-8223,	-7946,	3331,	9996,
	2822,	-8259,	-7908,	3390,	9994,	2762,	-8294,	-7869,
	3449,	9992,	2701,	-8329,	-7830,	3508,	9989,	2641,
	-8364,	-7791,	3567,	9986,	2580,	-8398,	-7751,	3626,
	9983,	2519,	-8432,	-7711,	3684,	9979,	2458,	-8466,
	-7671,	3743,	9974,	2397,	-8499,	-7631,	3801,	9970,
	2336,	-8532,	-7590,	3859,	9965,	2275,	-8565,	-7549,
	3917,	9959,	2214,	-8597,	-7507,	3975,	9954,	2152,
	-8629,	-7466,	4032,	9947,	2091,	-8661,	-7424,	4090,
	9941,	2029,	-8692,	-7381,	4147,	9934,	1968,	-8723,
	-7339,	4204,	9926,	1906,	-8754,	-7296,	4261,	9919,
	1844,	-8784,	-7253,	4318,	9910,	1782,	-8814,	-7209,
	4375,	9902,	1720,	-8843,	-7165,	4431,	9893,	1659,
	-8872,	-7121,	4487,	9883,	1596,	-8901,	-7077,	4544,
	9874,	1534,	-8930,	-7033,	4600,	9864,	1472,	-8958,
	-6988,	4655,	9853,	1410,	-8986,	-6943,	4711,	9842,
	1348,	-9013,	-6897,	4766,	9831,	1285,	-9040,	-6851,
	4821,	9819,	1223,	-9067,	-6806,	4876,	9807,	1160,
	-9093,	-6759,	4931,	9794,	1098,	-9119,	-6713,	4986,
	9782,	1035,	-9145,	-6666,	5040,	9768,	973,	-9170,
	-6619,	5095,	9755,	910,	-9195,	-6572,	5149,	9741,
	848,	-9220,	-6524,	5202,	9726,	785,	-9244,	-6476,
	5256,	9712,	722,	-9268,	-6428,	5309,	9696,	659,
	-9291,	-6380,	5363,	9681,	597,	-9314,	-6332,	5416,
	9665,	534,	-9337,	-6283,	5468,	9649,	471,	-9359,
	-6234,	5521,	9632,	408,	-9381,	-6184,	5573,	9615,
	345,	-9403,	-6135,	5625,	9597,	282,	-9424,	-6085,
	5677,	9579,	220,	-9445,	-6035,	5729,	9561,	157,
	-9465,	-5985,	5780,	9543,	94,		-9485,	-5934,	5831,
	9524,	31,		-9505,	-5883,	5882,	9504,	-32,	-9525,
	-5832,	5933,	9484,	-95,	-9544,	-5781,	5984,	9464
};
#endif
#if (FFT_BLOCK_LENGTH == 512)
fractcomplex sigCmpx[FFT_BLOCK_LENGTH]  __attribute__ ((section (".ydata, data, ymemory"), aligned (FFT_BLOCK_LENGTH * 2 *2))) =
{
	0,		9514,	5857,	-5909,	-9495,	62,		9533,	5806,
	-5959,	-9475,	125,	9552,	5755,	-6010,	-9455,	188,
	9570,	5703,	-6060,	-9435,	251,	9588,	5651,	-6110,
	-9413,	314,	9606,	5599,	-6160,	-9392,	377,	9623,
	5547,	-6209,	-9370,	440,	9640,	5495,	-6258,	-9348,
	502,	9657,	5442,	-6307,	-9326,	565,	9673,	5389,
	-6356,	-9303,	628,	9689,	5336,	-6404,	-9279,	691,
	9704,	5283,	-6452,	-9256,	754,	9719,	5229,	-6500,
	-9232,	816,	9734,	5175,	-6548,	-9207,	879,	9748,
	5122,	-6595,	-9183,	942,	9762,	5067,	-6643,	-9158,
	1004,	9775,	5013,	-6689,	-9132,	1067,	9788,	4959,
	-6736,	-9106,	1129,	9801,	4904,	-6782,	-9080,	1192,
	9813,	4849,	-6829,	-9054,	1254,	9825,	4794,	-6874,
	-9027,	1316,	9836,	4739,	-6920,	-8999,	1379,	9848,
	4683,	-6965,	-8972,	1441,	9858,	4627,	-7010,	-8944,
	1503,	9869,	4572,	-7055,	-8916,	1565,	9879,	4516,
	-7099,	-8887,	1627,	9888,	4459,	-7143,	-8858,	1690,
	9897,	4403,	-7187,	-8828,	1751,	9906,	4346,	-7231,
	-8799,	1813,	9914,	4290,	-7274,	-8769,	1875,	9922,
	4233,	-7317,	-8738,	1937,	9930,	4176,	-7360,	-8708,
	1999,	9937,	4119,	-7402,	-8676,	2060,	9944,	4061,
	-7445,	-8645,	2122,	9950,	4004,	-7486,	-8613,	2183,
	9956,	3946,	-7528,	-8581,	2244,	9962,	3888,	-7569,
	-8549,	2306,	9967,	3830,	-7610,	-8516,	2367,	9972,
	3772,	-7651,	-8483,	2428,	9977,	3713,	-7691,	-8449,
	2489,	9981,	3655,	-7731,	-8415,	2550,	9984,	3596,
	-7771,	-8381,	2610,	9988,	3538,	-7810,	-8347,	2671,
	9990,	3479,	-7850,	-8312,	2732,	9993,	3420,	-7888,
	-8277,	2792,	9995,	3361,	-7927,	-8241,	2852,	9997,
	3301,	-7965,	-8206,	2913,	9998,	3242,	-8003,	-8169,
	2973,	9999,	3182,	-8040,	-8133,	3033,	9999,	3123,
	-8078,	-8096,	3093,	9999,	3063,	-8115,	-8059,	3152,
	9999,	3003,	-8151,	-8022,	3212,	9998,	2943,	-8188,
	-7984,	3272,	9997,	2883,	-8223,	-7946,	3331,	9996,
	2822,	-8259,	-7908,	3390,	9994,	2762,	-8294,	-7869,
	3449,	9992,	2701,	-8329,	-7830,	3508,	9989,	2641,
	-8364,	-7791,	3567,	9986,	2580,	-8398,	-7751,	3626,
	9983,	2519,	-8432,	-7711,	3684,	9979,	2458,	-8466,
	-7671,	3743,	9974,	2397,	-8499,	-7631,	3801,	9970,
	2336,	-8532,	-7590,	3859,	9965,	2275,	-8565,	-7549,
	3917,	9959,	2214,	-8597,	-7507,	3975,	9954,	2152,
	-8629,	-7466,	4032,	9947,	2091,	-8661,	-7424,	4090,
	9941,	2029,	-8692,	-7381,	4147,	9934,	1968,	-8723,
	-7339,	4204,	9926,	1906,	-8754,	-7296,	4261,	9919,
	1844,	-8784,	-7253,	4318,	9910,	1782,	-8814,	-7209,
	4375,	9902,	1720,	-8843,	-7165,	4431,	9893,	1659,
	-8872,	-7121,	4487,	9883,	1596,	-8901,	-7077,	4544,
	9874,	1534,	-8930,	-7033,	4600,	9864,	1472,	-8958,
	-6988,	4655,	9853,	1410,	-8986,	-6943,	4711,	9842,
	1348,	-9013,	-6897,	4766,	9831,	1285,	-9040,	-6851,
	4821,	9819,	1223,	-9067,	-6806,	4876,	9807,	1160,
	-9093,	-6759,	4931,	9794,	1098,	-9119,	-6713,	4986,
	9782,	1035,	-9145,	-6666,	5040,	9768,	973,	-9170,
	-6619,	5095,	9755,	910,	-9195,	-6572,	5149,	9741,
	848,	-9220,	-6524,	5202,	9726,	785,	-9244,	-6476,
	5256,	9712,	722,	-9268,	-6428,	5309,	9696,	659,
	-9291,	-6380,	5363,	9681,	597,	-9314,	-6332,	5416,
	9665,	534,	-9337,	-6283,	5468,	9649,	471,	-9359,
	-6234,	5521,	9632,	408,	-9381,	-6184,	5573,	9615,
	345,	-9403,	-6135,	5625,	9597,	282,	-9424,	-6085,
	5677,	9579,	220,	-9445,	-6035,	5729,	9561,	157,
	-9465,	-5985,	5780,	9543,	94,		-9485,	-5934,	5831,
	9524,	31,		-9505,	-5883,	5882,	9504,	-32,	-9525,
	-5832,	5933,	9484,	-95,	-9544,	-5781,	5984,	9464,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
	0,		0,		0,		0,		0,		0,		0,		0,
};
#endif
