
K
	images_inPlaceholder*$
shape:?????????*
dtype0
?
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"            *
dtype0
{
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *?V??*
dtype0
{
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *?V?=*
dtype0
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
dtype0*
seed2 *

seed 
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel
?
conv2d/kernel
VariableV2*
shared_name * 
_class
loc:@conv2d/kernel*
dtype0*
	container *
shape:
?
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(
X
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel
n
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB*    *
dtype0
{
conv2d/bias
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
dtype0*
	container *
shape:
?
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(
R
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias
I
conv2d/dilation_rateConst*
valueB"      *
dtype0
?
conv2d/Conv2DConv2D	images_inconv2d/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
Z
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
data_formatNHWC*
T0
?
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
valueB*  ??*
dtype0
?
batch_normalization/gamma
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
	container *
shape:*
shared_name 
?
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
|
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma
?
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
valueB*    *
dtype0
?
batch_normalization/beta
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape:
?
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
y
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta
?
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
dtype0
?
batch_normalization/moving_mean
VariableV2*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
	container *
shape:
?
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(
?
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
?
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  ??*
dtype0
?
#batch_normalization/moving_variance
VariableV2*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
	container *
shape:
?
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(
?
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAddbatch_normalization/gamma/readbatch_normalization/beta/read$batch_normalization/moving_mean/read(batch_normalization/moving_variance/read*
epsilon%o?:*
T0*
U0*
data_formatNHWC*
is_training( 
F
batch_normalization/ConstConst*
dtype0*
valueB
 *?p}?
;
ReluRelu$batch_normalization/FusedBatchNormV3*
T0
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"             *
dtype0

.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *?А?*
dtype0

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *?А=
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel
?
conv2d_1/kernel
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@conv2d_1/kernel
?
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(
^
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel
r
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB *    *
dtype0

conv2d_1/bias
VariableV2* 
_class
loc:@conv2d_1/bias*
dtype0*
	container *
shape: *
shared_name 
?
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
X
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias
K
conv2d_1/dilation_rateConst*
valueB"      *
dtype0
?
conv2d_1/Conv2DConv2DReluconv2d_1/kernel/read*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
`
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
data_formatNHWC*
T0
?
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB *  ??*
dtype0
?
batch_normalization_1/gamma
VariableV2*
shape: *
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
	container 
?
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(
?
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma
?
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB *    *
dtype0
?
batch_normalization_1/beta
VariableV2*
shape: *
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
	container 
?
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(

batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta
?
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB *    *
dtype0
?
!batch_normalization_1/moving_mean
VariableV2*
shape: *
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
	container 
?
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
use_locking(
?
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
?
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB *  ??*
dtype0
?
%batch_normalization_1/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
	container *
shape: *
shared_name 
?
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
use_locking(
?
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd batch_normalization_1/gamma/readbatch_normalization_1/beta/read&batch_normalization_1/moving_mean/read*batch_normalization_1/moving_variance/read*
epsilon%o?:*
T0*
U0*
data_formatNHWC*
is_training( 
H
batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0
?
Relu_1Relu&batch_normalization_1/FusedBatchNormV3*
T0
?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   *
dtype0

.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *????

.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *???=*
dtype0
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
dtype0*
seed2 *

seed 
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel
?
conv2d_2/kernel
VariableV2*"
_class
loc:@conv2d_2/kernel*
dtype0*
	container *
shape: @*
shared_name 
?
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(
^
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel
r
conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueB@*    

conv2d_2/bias
VariableV2*
dtype0*
	container *
shape:@*
shared_name * 
_class
loc:@conv2d_2/bias
?
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(
X
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias
K
conv2d_2/dilation_rateConst*
valueB"      *
dtype0
?
conv2d_2/Conv2DConv2DRelu_1conv2d_2/kernel/read*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
`
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC
?
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  ??*
dtype0
?
batch_normalization_2/gamma
VariableV2*
shape:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
	container 
?
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(
?
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma
?
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    *
dtype0
?
batch_normalization_2/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
	container *
shape:@
?
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
use_locking(

batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta
?
3batch_normalization_2/moving_mean/Initializer/zerosConst*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    
?
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
	container *
shape:@*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean
?
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
use_locking(
?
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
?
6batch_normalization_2/moving_variance/Initializer/onesConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  ??
?
%batch_normalization_2/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
	container *
shape:@*
shared_name 
?
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
use_locking(
?
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd batch_normalization_2/gamma/readbatch_normalization_2/beta/read&batch_normalization_2/moving_mean/read*batch_normalization_2/moving_variance/read*
epsilon%o?:*
T0*
U0*
data_formatNHWC*
is_training( 
H
batch_normalization_2/ConstConst*
valueB
 *?p}?*
dtype0
?
Relu_2Relu&batch_normalization_2/FusedBatchNormV3*
T0
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      @   
   *
dtype0

.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *iʑ?*
dtype0

.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *iʑ=*
dtype0
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
dtype0*
seed2 
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel
?
conv2d_3/kernel
VariableV2*"
_class
loc:@conv2d_3/kernel*
dtype0*
	container *
shape:@
*
shared_name 
?
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
^
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel
r
conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueB
*    

conv2d_3/bias
VariableV2*
dtype0*
	container *
shape:
*
shared_name * 
_class
loc:@conv2d_3/bias
?
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
X
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias
K
conv2d_3/dilation_rateConst*
valueB"      *
dtype0
?
conv2d_3/Conv2DConv2DRelu_2conv2d_3/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
`
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC
?
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
valueB
*  ??*
dtype0
?
batch_normalization_3/gamma
VariableV2*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
	container *
shape:
*
shared_name 
?
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
use_locking(
?
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
T0*.
_class$
" loc:@batch_normalization_3/gamma
?
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
valueB
*    *
dtype0
?
batch_normalization_3/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
	container *
shape:

?
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
use_locking(

batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
T0*-
_class#
!loc:@batch_normalization_3/beta
?
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB
*    *
dtype0
?
!batch_normalization_3/moving_mean
VariableV2*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
	container *
shape:
*
shared_name 
?
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(
?
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
?
6batch_normalization_3/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB
*  ??*
dtype0
?
%batch_normalization_3/moving_variance
VariableV2*
shape:
*
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
	container 
?
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(
?
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd batch_normalization_3/gamma/readbatch_normalization_3/beta/read&batch_normalization_3/moving_mean/read*batch_normalization_3/moving_variance/read*
epsilon%o?:*
T0*
U0*
data_formatNHWC*
is_training( 
H
batch_normalization_3/ConstConst*
valueB
 *?p}?*
dtype0
W
flatten/ShapeShape&batch_normalization_3/FusedBatchNormV3*
T0*
out_type0
I
flatten/strided_slice/stackConst*
valueB: *
dtype0
K
flatten/strided_slice/stack_1Const*
valueB:*
dtype0
K
flatten/strided_slice/stack_2Const*
dtype0*
valueB:
?
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
J
flatten/Reshape/shape/1Const*
valueB :
?????????*
dtype0
k
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N
p
flatten/ReshapeReshape&batch_normalization_3/FusedBatchNormV3flatten/Reshape/shape*
T0*
Tshape0"?