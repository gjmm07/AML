ыт
юв
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Р
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЭЬL>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8Ій
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш@*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
Ш@*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:@*
dtype0

conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_4/kernel

-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_4/bias

+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_5/kernel

-conv2d_transpose_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_5/bias

+conv2d_transpose_5/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/bias*
_output_shapes	
:*
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0

NoOpNoOp
о
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B
В
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
R
"	variables
#regularization_losses
$trainable_variables
%	keras_api
h

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
R
,	variables
-regularization_losses
.trainable_variables
/	keras_api
h

0kernel
1bias
2	variables
3regularization_losses
4trainable_variables
5	keras_api
8
0
1
2
3
&4
'5
06
17
 
8
0
1
2
3
&4
'5
06
17
­

6layers
7layer_regularization_losses
8metrics
		variables

regularization_losses
9layer_metrics
:non_trainable_variables
trainable_variables
 
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­

;layers
<layer_regularization_losses
=metrics
	variables
regularization_losses
>layer_metrics
?non_trainable_variables
trainable_variables
 
 
 
­

@layers
Alayer_regularization_losses
Bmetrics
	variables
regularization_losses
Clayer_metrics
Dnon_trainable_variables
trainable_variables
 
 
 
­

Elayers
Flayer_regularization_losses
Gmetrics
	variables
regularization_losses
Hlayer_metrics
Inon_trainable_variables
trainable_variables
ec
VARIABLE_VALUEconv2d_transpose_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­

Jlayers
Klayer_regularization_losses
Lmetrics
	variables
regularization_losses
Mlayer_metrics
Nnon_trainable_variables
 trainable_variables
 
 
 
­

Olayers
Player_regularization_losses
Qmetrics
"	variables
#regularization_losses
Rlayer_metrics
Snon_trainable_variables
$trainable_variables
ec
VARIABLE_VALUEconv2d_transpose_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
­

Tlayers
Ulayer_regularization_losses
Vmetrics
(	variables
)regularization_losses
Wlayer_metrics
Xnon_trainable_variables
*trainable_variables
 
 
 
­

Ylayers
Zlayer_regularization_losses
[metrics
,	variables
-regularization_losses
\layer_metrics
]non_trainable_variables
.trainable_variables
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
­

^layers
_layer_regularization_losses
`metrics
2	variables
3regularization_losses
alayer_metrics
bnon_trainable_variables
4trainable_variables
8
0
1
2
3
4
5
6
7
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_dense_5_inputPlaceholder*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
shape:џџџџџџџџџШ
њ
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_5_inputdense_5/kerneldense_5/biasconv2d_transpose_4/kernelconv2d_transpose_4/biasconv2d_transpose_5/kernelconv2d_transpose_5/biasconv2d_8/kernelconv2d_8/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2043648
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp-conv2d_transpose_4/kernel/Read/ReadVariableOp+conv2d_transpose_4/bias/Read/ReadVariableOp-conv2d_transpose_5/kernel/Read/ReadVariableOp+conv2d_transpose_5/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_2043961
Ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasconv2d_transpose_4/kernelconv2d_transpose_4/biasconv2d_transpose_5/kernelconv2d_transpose_5/biasconv2d_8/kernelconv2d_8/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2043995ё
Ш
g
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_2043850

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:џџџџџџџџџ@2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Рs
д
"__inference__wrapped_model_2043281
dense_5_input4
0generator_dense_5_matmul_readvariableop_resource5
1generator_dense_5_biasadd_readvariableop_resourceI
Egenerator_conv2d_transpose_4_conv2d_transpose_readvariableop_resource@
<generator_conv2d_transpose_4_biasadd_readvariableop_resourceI
Egenerator_conv2d_transpose_5_conv2d_transpose_readvariableop_resource@
<generator_conv2d_transpose_5_biasadd_readvariableop_resource5
1generator_conv2d_8_conv2d_readvariableop_resource6
2generator_conv2d_8_biasadd_readvariableop_resource
identityЂ)generator/conv2d_8/BiasAdd/ReadVariableOpЂ(generator/conv2d_8/Conv2D/ReadVariableOpЂ3generator/conv2d_transpose_4/BiasAdd/ReadVariableOpЂ<generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ3generator/conv2d_transpose_5/BiasAdd/ReadVariableOpЂ<generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOpЂ(generator/dense_5/BiasAdd/ReadVariableOpЂ'generator/dense_5/MatMul/ReadVariableOpХ
'generator/dense_5/MatMul/ReadVariableOpReadVariableOp0generator_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
Ш@*
dtype02)
'generator/dense_5/MatMul/ReadVariableOpБ
generator/dense_5/MatMulMatMuldense_5_input/generator/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
generator/dense_5/MatMulУ
(generator/dense_5/BiasAdd/ReadVariableOpReadVariableOp1generator_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:@*
dtype02*
(generator/dense_5/BiasAdd/ReadVariableOpЪ
generator/dense_5/BiasAddBiasAdd"generator/dense_5/MatMul:product:00generator/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
generator/dense_5/BiasAddЃ
"generator/leaky_re_lu_12/LeakyRelu	LeakyRelu"generator/dense_5/BiasAdd:output:0*(
_output_shapes
:џџџџџџџџџ@2$
"generator/leaky_re_lu_12/LeakyRelu
generator/reshape_2/ShapeShape0generator/leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
generator/reshape_2/Shape
'generator/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'generator/reshape_2/strided_slice/stack 
)generator/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)generator/reshape_2/strided_slice/stack_1 
)generator/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)generator/reshape_2/strided_slice/stack_2к
!generator/reshape_2/strided_sliceStridedSlice"generator/reshape_2/Shape:output:00generator/reshape_2/strided_slice/stack:output:02generator/reshape_2/strided_slice/stack_1:output:02generator/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!generator/reshape_2/strided_slice
#generator/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#generator/reshape_2/Reshape/shape/1
#generator/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#generator/reshape_2/Reshape/shape/2
#generator/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2%
#generator/reshape_2/Reshape/shape/3В
!generator/reshape_2/Reshape/shapePack*generator/reshape_2/strided_slice:output:0,generator/reshape_2/Reshape/shape/1:output:0,generator/reshape_2/Reshape/shape/2:output:0,generator/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!generator/reshape_2/Reshape/shapeо
generator/reshape_2/ReshapeReshape0generator/leaky_re_lu_12/LeakyRelu:activations:0*generator/reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
generator/reshape_2/Reshape
"generator/conv2d_transpose_4/ShapeShape$generator/reshape_2/Reshape:output:0*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_4/ShapeЎ
0generator/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose_4/strided_slice/stackВ
2generator/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_4/strided_slice/stack_1В
2generator/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_4/strided_slice/stack_2
*generator/conv2d_transpose_4/strided_sliceStridedSlice+generator/conv2d_transpose_4/Shape:output:09generator/conv2d_transpose_4/strided_slice/stack:output:0;generator/conv2d_transpose_4/strided_slice/stack_1:output:0;generator/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose_4/strided_slice
$generator/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_4/stack/1
$generator/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$generator/conv2d_transpose_4/stack/2
$generator/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2&
$generator/conv2d_transpose_4/stack/3Р
"generator/conv2d_transpose_4/stackPack3generator/conv2d_transpose_4/strided_slice:output:0-generator/conv2d_transpose_4/stack/1:output:0-generator/conv2d_transpose_4/stack/2:output:0-generator/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_4/stackВ
2generator/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2generator/conv2d_transpose_4/strided_slice_1/stackЖ
4generator/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_4/strided_slice_1/stack_1Ж
4generator/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_4/strided_slice_1/stack_2
,generator/conv2d_transpose_4/strided_slice_1StridedSlice+generator/conv2d_transpose_4/stack:output:0;generator/conv2d_transpose_4/strided_slice_1/stack:output:0=generator/conv2d_transpose_4/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,generator/conv2d_transpose_4/strided_slice_1
<generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02>
<generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOpё
-generator/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_4/stack:output:0Dgenerator/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0$generator/reshape_2/Reshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2/
-generator/conv2d_transpose_4/conv2d_transposeф
3generator/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype025
3generator/conv2d_transpose_4/BiasAdd/ReadVariableOp
$generator/conv2d_transpose_4/BiasAddBiasAdd6generator/conv2d_transpose_4/conv2d_transpose:output:0;generator/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2&
$generator/conv2d_transpose_4/BiasAddЖ
"generator/leaky_re_lu_13/LeakyRelu	LeakyRelu-generator/conv2d_transpose_4/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ2$
"generator/leaky_re_lu_13/LeakyReluЈ
"generator/conv2d_transpose_5/ShapeShape0generator/leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_5/ShapeЎ
0generator/conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0generator/conv2d_transpose_5/strided_slice/stackВ
2generator/conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_5/strided_slice/stack_1В
2generator/conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2generator/conv2d_transpose_5/strided_slice/stack_2
*generator/conv2d_transpose_5/strided_sliceStridedSlice+generator/conv2d_transpose_5/Shape:output:09generator/conv2d_transpose_5/strided_slice/stack:output:0;generator/conv2d_transpose_5/strided_slice/stack_1:output:0;generator/conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*generator/conv2d_transpose_5/strided_slice
$generator/conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$generator/conv2d_transpose_5/stack/1
$generator/conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2&
$generator/conv2d_transpose_5/stack/2
$generator/conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2&
$generator/conv2d_transpose_5/stack/3Р
"generator/conv2d_transpose_5/stackPack3generator/conv2d_transpose_5/strided_slice:output:0-generator/conv2d_transpose_5/stack/1:output:0-generator/conv2d_transpose_5/stack/2:output:0-generator/conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:2$
"generator/conv2d_transpose_5/stackВ
2generator/conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2generator/conv2d_transpose_5/strided_slice_1/stackЖ
4generator/conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_5/strided_slice_1/stack_1Ж
4generator/conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4generator/conv2d_transpose_5/strided_slice_1/stack_2
,generator/conv2d_transpose_5/strided_slice_1StridedSlice+generator/conv2d_transpose_5/stack:output:0;generator/conv2d_transpose_5/strided_slice_1/stack:output:0=generator/conv2d_transpose_5/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,generator/conv2d_transpose_5/strided_slice_1
<generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_5_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02>
<generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOp§
-generator/conv2d_transpose_5/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_5/stack:output:0Dgenerator/conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:00generator/leaky_re_lu_13/LeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2/
-generator/conv2d_transpose_5/conv2d_transposeф
3generator/conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype025
3generator/conv2d_transpose_5/BiasAdd/ReadVariableOp
$generator/conv2d_transpose_5/BiasAddBiasAdd6generator/conv2d_transpose_5/conv2d_transpose:output:0;generator/conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ  2&
$generator/conv2d_transpose_5/BiasAddЖ
"generator/leaky_re_lu_14/LeakyRelu	LeakyRelu-generator/conv2d_transpose_5/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ  2$
"generator/leaky_re_lu_14/LeakyReluЯ
(generator/conv2d_8/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02*
(generator/conv2d_8/Conv2D/ReadVariableOp
generator/conv2d_8/Conv2DConv2D0generator/leaky_re_lu_14/LeakyRelu:activations:00generator/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
generator/conv2d_8/Conv2DХ
)generator/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)generator/conv2d_8/BiasAdd/ReadVariableOpд
generator/conv2d_8/BiasAddBiasAdd"generator/conv2d_8/Conv2D:output:01generator/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
generator/conv2d_8/BiasAdd
generator/conv2d_8/TanhTanh#generator/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
generator/conv2d_8/Tanh
IdentityIdentitygenerator/conv2d_8/Tanh:y:0*^generator/conv2d_8/BiasAdd/ReadVariableOp)^generator/conv2d_8/Conv2D/ReadVariableOp4^generator/conv2d_transpose_4/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_5/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOp)^generator/dense_5/BiasAdd/ReadVariableOp(^generator/dense_5/MatMul/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2V
)generator/conv2d_8/BiasAdd/ReadVariableOp)generator/conv2d_8/BiasAdd/ReadVariableOp2T
(generator/conv2d_8/Conv2D/ReadVariableOp(generator/conv2d_8/Conv2D/ReadVariableOp2j
3generator/conv2d_transpose_4/BiasAdd/ReadVariableOp3generator/conv2d_transpose_4/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_5/BiasAdd/ReadVariableOp3generator/conv2d_transpose_5/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_5/conv2d_transpose/ReadVariableOp2T
(generator/dense_5/BiasAdd/ReadVariableOp(generator/dense_5/BiasAdd/ReadVariableOp2R
'generator/dense_5/MatMul/ReadVariableOp'generator/dense_5/MatMul/ReadVariableOp:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
к
к
+__inference_generator_layer_call_fn_2043805

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_generator_layer_call_and_return_conditional_losses_20435572
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Б
g
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_2043444

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Б
g
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_2043462

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Еb
б
F__inference_generator_layer_call_and_return_conditional_losses_2043784

inputs*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource?
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_4_biasadd_readvariableop_resource?
;conv2d_transpose_5_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_5_biasadd_readvariableop_resource+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource
identityЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂ)conv2d_transpose_4/BiasAdd/ReadVariableOpЂ2conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ)conv2d_transpose_5/BiasAdd/ReadVariableOpЂ2conv2d_transpose_5/conv2d_transpose/ReadVariableOpЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЇ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
Ш@*
dtype02
dense_5/MatMul/ReadVariableOp
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
dense_5/MatMulЅ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOpЂ
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
dense_5/BiasAdd
leaky_re_lu_12/LeakyRelu	LeakyReludense_5/BiasAdd:output:0*(
_output_shapes
:џџџџџџџџџ@2
leaky_re_lu_12/LeakyRelux
reshape_2/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_2/Shape
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicex
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/1x
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/2y
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
reshape_2/Reshape/shape/3і
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shapeЖ
reshape_2/ReshapeReshape&leaky_re_lu_12/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
reshape_2/Reshape~
conv2d_transpose_4/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2д
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slicez
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/1z
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/2{
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stackЂ
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1Ђ
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2о
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ю
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpП
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeЦ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpп
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_transpose_4/BiasAdd
leaky_re_lu_13/LeakyRelu	LeakyRelu#conv2d_transpose_4/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ2
leaky_re_lu_13/LeakyRelu
conv2d_transpose_5/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_5/Shape
&conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_5/strided_slice/stack
(conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_5/strided_slice/stack_1
(conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_5/strided_slice/stack_2д
 conv2d_transpose_5/strided_sliceStridedSlice!conv2d_transpose_5/Shape:output:0/conv2d_transpose_5/strided_slice/stack:output:01conv2d_transpose_5/strided_slice/stack_1:output:01conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_5/strided_slicez
conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_5/stack/1z
conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_5/stack/2{
conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_5/stack/3
conv2d_transpose_5/stackPack)conv2d_transpose_5/strided_slice:output:0#conv2d_transpose_5/stack/1:output:0#conv2d_transpose_5/stack/2:output:0#conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_5/stack
(conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_5/strided_slice_1/stackЂ
*conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_5/strided_slice_1/stack_1Ђ
*conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_5/strided_slice_1/stack_2о
"conv2d_transpose_5/strided_slice_1StridedSlice!conv2d_transpose_5/stack:output:01conv2d_transpose_5/strided_slice_1/stack:output:03conv2d_transpose_5/strided_slice_1/stack_1:output:03conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_5/strided_slice_1ю
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_5_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpЫ
#conv2d_transpose_5/conv2d_transposeConv2DBackpropInput!conv2d_transpose_5/stack:output:0:conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_13/LeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2%
#conv2d_transpose_5/conv2d_transposeЦ
)conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_5/BiasAdd/ReadVariableOpп
conv2d_transpose_5/BiasAddBiasAdd,conv2d_transpose_5/conv2d_transpose:output:01conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ  2
conv2d_transpose_5/BiasAdd
leaky_re_lu_14/LeakyRelu	LeakyRelu#conv2d_transpose_5/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ  2
leaky_re_lu_14/LeakyReluБ
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOpо
conv2d_8/Conv2DConv2D&leaky_re_lu_14/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_8/Conv2DЇ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpЌ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_8/BiasAdd{
conv2d_8/TanhTanhconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_8/TanhГ
IdentityIdentityconv2d_8/Tanh:y:0 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp*^conv2d_transpose_5/BiasAdd/ReadVariableOp3^conv2d_transpose_5/conv2d_transpose/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_5/BiasAdd/ReadVariableOp)conv2d_transpose_5/BiasAdd/ReadVariableOp2h
2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
ъ

 __inference__traced_save_2043961
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop8
4savev2_conv2d_transpose_4_kernel_read_readvariableop6
2savev2_conv2d_transpose_4_bias_read_readvariableop8
4savev2_conv2d_transpose_5_kernel_read_readvariableop6
2savev2_conv2d_transpose_5_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameй
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ы
valueсBо	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slicesР
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop4savev2_conv2d_transpose_4_kernel_read_readvariableop2savev2_conv2d_transpose_4_bias_read_readvariableop4savev2_conv2d_transpose_5_kernel_read_readvariableop2savev2_conv2d_transpose_5_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*y
_input_shapesh
f: :
Ш@:@::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ш@:!

_output_shapes	
:@:.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:: 

_output_shapes
::	

_output_shapes
: 
і#
ќ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_2043359

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Е
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddК
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
н
D__inference_dense_5_layer_call_and_return_conditional_losses_2043836

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџШ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Б
g
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_2043889

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

L
0__inference_leaky_re_lu_13_layer_call_fn_2043884

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_20434442
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ь
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_2043426

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ш
g
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_2043404

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:џџџџџџџџџ@2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ь
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_2043869

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
і#
ќ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2043315

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Е
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddК
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Еb
б
F__inference_generator_layer_call_and_return_conditional_losses_2043716

inputs*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource?
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_4_biasadd_readvariableop_resource?
;conv2d_transpose_5_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_5_biasadd_readvariableop_resource+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource
identityЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂ)conv2d_transpose_4/BiasAdd/ReadVariableOpЂ2conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ)conv2d_transpose_5/BiasAdd/ReadVariableOpЂ2conv2d_transpose_5/conv2d_transpose/ReadVariableOpЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЇ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
Ш@*
dtype02
dense_5/MatMul/ReadVariableOp
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
dense_5/MatMulЅ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOpЂ
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
dense_5/BiasAdd
leaky_re_lu_12/LeakyRelu	LeakyReludense_5/BiasAdd:output:0*(
_output_shapes
:џџџџџџџџџ@2
leaky_re_lu_12/LeakyRelux
reshape_2/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_2/Shape
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicex
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/1x
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/2y
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
reshape_2/Reshape/shape/3і
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shapeЖ
reshape_2/ReshapeReshape&leaky_re_lu_12/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
reshape_2/Reshape~
conv2d_transpose_4/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2д
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slicez
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/1z
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/2{
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stackЂ
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1Ђ
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2о
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ю
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpП
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeЦ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpп
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_transpose_4/BiasAdd
leaky_re_lu_13/LeakyRelu	LeakyRelu#conv2d_transpose_4/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ2
leaky_re_lu_13/LeakyRelu
conv2d_transpose_5/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_5/Shape
&conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_5/strided_slice/stack
(conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_5/strided_slice/stack_1
(conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_5/strided_slice/stack_2д
 conv2d_transpose_5/strided_sliceStridedSlice!conv2d_transpose_5/Shape:output:0/conv2d_transpose_5/strided_slice/stack:output:01conv2d_transpose_5/strided_slice/stack_1:output:01conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_5/strided_slicez
conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_5/stack/1z
conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_5/stack/2{
conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_5/stack/3
conv2d_transpose_5/stackPack)conv2d_transpose_5/strided_slice:output:0#conv2d_transpose_5/stack/1:output:0#conv2d_transpose_5/stack/2:output:0#conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_5/stack
(conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_5/strided_slice_1/stackЂ
*conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_5/strided_slice_1/stack_1Ђ
*conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_5/strided_slice_1/stack_2о
"conv2d_transpose_5/strided_slice_1StridedSlice!conv2d_transpose_5/stack:output:01conv2d_transpose_5/strided_slice_1/stack:output:03conv2d_transpose_5/strided_slice_1/stack_1:output:03conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_5/strided_slice_1ю
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_5_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpЫ
#conv2d_transpose_5/conv2d_transposeConv2DBackpropInput!conv2d_transpose_5/stack:output:0:conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_13/LeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2%
#conv2d_transpose_5/conv2d_transposeЦ
)conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_5/BiasAdd/ReadVariableOpп
conv2d_transpose_5/BiasAddBiasAdd,conv2d_transpose_5/conv2d_transpose:output:01conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ  2
conv2d_transpose_5/BiasAdd
leaky_re_lu_14/LeakyRelu	LeakyRelu#conv2d_transpose_5/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџ  2
leaky_re_lu_14/LeakyReluБ
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOpо
conv2d_8/Conv2DConv2D&leaky_re_lu_14/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_8/Conv2DЇ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpЌ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_8/BiasAdd{
conv2d_8/TanhTanhconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_8/TanhГ
IdentityIdentityconv2d_8/Tanh:y:0 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp*^conv2d_transpose_5/BiasAdd/ReadVariableOp3^conv2d_transpose_5/conv2d_transpose/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_5/BiasAdd/ReadVariableOp)conv2d_transpose_5/BiasAdd/ReadVariableOp2h
2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2conv2d_transpose_5/conv2d_transpose/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ы

*__inference_conv2d_8_layer_call_fn_2043914

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_20434812
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї&
с
F__inference_generator_layer_call_and_return_conditional_losses_2043498
dense_5_input
dense_5_2043394
dense_5_2043396
conv2d_transpose_4_2043434
conv2d_transpose_4_2043436
conv2d_transpose_5_2043452
conv2d_transpose_5_2043454
conv2d_8_2043492
conv2d_8_2043494
identityЂ conv2d_8/StatefulPartitionedCallЂ*conv2d_transpose_4/StatefulPartitionedCallЂ*conv2d_transpose_5/StatefulPartitionedCallЂdense_5/StatefulPartitionedCall
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_2043394dense_5_2043396*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_20433832!
dense_5/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_20434042 
leaky_re_lu_12/PartitionedCall
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_20434262
reshape_2/PartitionedCall
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_4_2043434conv2d_transpose_4_2043436*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_20433152,
*conv2d_transpose_4/StatefulPartitionedCallВ
leaky_re_lu_13/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_20434442 
leaky_re_lu_13/PartitionedCall
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_5_2043452conv2d_transpose_5_2043454*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_20433592,
*conv2d_transpose_5/StatefulPartitionedCallВ
leaky_re_lu_14/PartitionedCallPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_20434622 
leaky_re_lu_14/PartitionedCallе
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_8_2043492conv2d_8_2043494*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_20434812"
 conv2d_8/StatefulPartitionedCallЖ
IdentityIdentity)conv2d_8/StatefulPartitionedCall:output:0!^conv2d_8/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
у
~
)__inference_dense_5_layer_call_fn_2043845

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_20433832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџШ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
т

4__inference_conv2d_transpose_4_layer_call_fn_2043325

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_20433152
StatefulPartitionedCallЉ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В&
Ы
#__inference__traced_restore_2043995
file_prefix#
assignvariableop_dense_5_kernel#
assignvariableop_1_dense_5_bias0
,assignvariableop_2_conv2d_transpose_4_kernel.
*assignvariableop_3_conv2d_transpose_4_bias0
,assignvariableop_4_conv2d_transpose_5_kernel.
*assignvariableop_5_conv2d_transpose_5_bias&
"assignvariableop_6_conv2d_8_kernel$
 assignvariableop_7_conv2d_8_bias

identity_9ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7п
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ы
valueсBо	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slicesи
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Б
AssignVariableOp_2AssignVariableOp,assignvariableop_2_conv2d_transpose_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Џ
AssignVariableOp_3AssignVariableOp*assignvariableop_3_conv2d_transpose_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Б
AssignVariableOp_4AssignVariableOp,assignvariableop_4_conv2d_transpose_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Џ
AssignVariableOp_5AssignVariableOp*assignvariableop_5_conv2d_transpose_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_8_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*5
_input_shapes$
": ::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
&
к
F__inference_generator_layer_call_and_return_conditional_losses_2043557

inputs
dense_5_2043532
dense_5_2043534
conv2d_transpose_4_2043539
conv2d_transpose_4_2043541
conv2d_transpose_5_2043545
conv2d_transpose_5_2043547
conv2d_8_2043551
conv2d_8_2043553
identityЂ conv2d_8/StatefulPartitionedCallЂ*conv2d_transpose_4/StatefulPartitionedCallЂ*conv2d_transpose_5/StatefulPartitionedCallЂdense_5/StatefulPartitionedCall
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_2043532dense_5_2043534*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_20433832!
dense_5/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_20434042 
leaky_re_lu_12/PartitionedCall
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_20434262
reshape_2/PartitionedCall
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_4_2043539conv2d_transpose_4_2043541*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_20433152,
*conv2d_transpose_4/StatefulPartitionedCallВ
leaky_re_lu_13/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_20434442 
leaky_re_lu_13/PartitionedCall
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_5_2043545conv2d_transpose_5_2043547*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_20433592,
*conv2d_transpose_5/StatefulPartitionedCallВ
leaky_re_lu_14/PartitionedCallPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_20434622 
leaky_re_lu_14/PartitionedCallе
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_8_2043551conv2d_8_2043553*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_20434812"
 conv2d_8/StatefulPartitionedCallЖ
IdentityIdentity)conv2d_8/StatefulPartitionedCall:output:0!^conv2d_8/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
к
к
+__inference_generator_layer_call_fn_2043826

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_generator_layer_call_and_return_conditional_losses_20436062
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ё
л
%__inference_signature_wrapper_2043648
dense_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_20432812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
Б
g
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_2043879

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї&
с
F__inference_generator_layer_call_and_return_conditional_losses_2043526
dense_5_input
dense_5_2043501
dense_5_2043503
conv2d_transpose_4_2043508
conv2d_transpose_4_2043510
conv2d_transpose_5_2043514
conv2d_transpose_5_2043516
conv2d_8_2043520
conv2d_8_2043522
identityЂ conv2d_8/StatefulPartitionedCallЂ*conv2d_transpose_4/StatefulPartitionedCallЂ*conv2d_transpose_5/StatefulPartitionedCallЂdense_5/StatefulPartitionedCall
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_2043501dense_5_2043503*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_20433832!
dense_5/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_20434042 
leaky_re_lu_12/PartitionedCall
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_20434262
reshape_2/PartitionedCall
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_4_2043508conv2d_transpose_4_2043510*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_20433152,
*conv2d_transpose_4/StatefulPartitionedCallВ
leaky_re_lu_13/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_20434442 
leaky_re_lu_13/PartitionedCall
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_5_2043514conv2d_transpose_5_2043516*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_20433592,
*conv2d_transpose_5/StatefulPartitionedCallВ
leaky_re_lu_14/PartitionedCallPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_20434622 
leaky_re_lu_14/PartitionedCallе
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_8_2043520conv2d_8_2043522*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_20434812"
 conv2d_8/StatefulPartitionedCallЖ
IdentityIdentity)conv2d_8/StatefulPartitionedCall:output:0!^conv2d_8/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
Д
о
E__inference_conv2d_8_layer_call_and_return_conditional_losses_2043905

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
TanhЇ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
т

4__inference_conv2d_transpose_5_layer_call_fn_2043369

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_20433592
StatefulPartitionedCallЉ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Д
о
E__inference_conv2d_8_layer_call_and_return_conditional_losses_2043481

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
TanhЇ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
я
с
+__inference_generator_layer_call_fn_2043625
dense_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_generator_layer_call_and_return_conditional_losses_20436062
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
­
G
+__inference_reshape_2_layer_call_fn_2043874

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_20434262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
н
D__inference_dense_5_layer_call_and_return_conditional_losses_2043383

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџШ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs

L
0__inference_leaky_re_lu_14_layer_call_fn_2043894

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_20434622
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
я
с
+__inference_generator_layer_call_fn_2043576
dense_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_generator_layer_call_and_return_conditional_losses_20435572
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:џџџџџџџџџШ
'
_user_specified_namedense_5_input
&
к
F__inference_generator_layer_call_and_return_conditional_losses_2043606

inputs
dense_5_2043581
dense_5_2043583
conv2d_transpose_4_2043588
conv2d_transpose_4_2043590
conv2d_transpose_5_2043594
conv2d_transpose_5_2043596
conv2d_8_2043600
conv2d_8_2043602
identityЂ conv2d_8/StatefulPartitionedCallЂ*conv2d_transpose_4/StatefulPartitionedCallЂ*conv2d_transpose_5/StatefulPartitionedCallЂdense_5/StatefulPartitionedCall
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_2043581dense_5_2043583*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_20433832!
dense_5/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_20434042 
leaky_re_lu_12/PartitionedCall
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_20434262
reshape_2/PartitionedCall
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_4_2043588conv2d_transpose_4_2043590*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_20433152,
*conv2d_transpose_4/StatefulPartitionedCallВ
leaky_re_lu_13/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_20434442 
leaky_re_lu_13/PartitionedCall
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_5_2043594conv2d_transpose_5_2043596*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_20433592,
*conv2d_transpose_5/StatefulPartitionedCallВ
leaky_re_lu_14/PartitionedCallPartitionedCall3conv2d_transpose_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_20434622 
leaky_re_lu_14/PartitionedCallе
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_8_2043600conv2d_8_2043602*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_20434812"
 conv2d_8/StatefulPartitionedCallЖ
IdentityIdentity)conv2d_8/StatefulPartitionedCall:output:0!^conv2d_8/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:џџџџџџџџџШ::::::::2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ї
L
0__inference_leaky_re_lu_12_layer_call_fn_2043855

inputs
identityЭ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_20434042
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ@:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Р
serving_defaultЌ
H
dense_5_input7
serving_default_dense_5_input:0џџџџџџџџџШD
conv2d_88
StatefulPartitionedCall:0џџџџџџџџџ  tensorflow/serving/predict:к№
љ<
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

regularization_losses
trainable_variables
	keras_api

signatures
c_default_save_signature
d__call__
*e&call_and_return_all_conditional_losses"э9
_tf_keras_sequentialЮ9{"class_name": "Sequential", "name": "generator", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "generator", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_5_input"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "generator", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_5_input"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
ы

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"Ц
_tf_keras_layerЌ{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
р
	variables
regularization_losses
trainable_variables
	keras_api
h__call__
*i&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"class_name": "LeakyReLU", "name": "leaky_re_lu_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
љ
	variables
regularization_losses
trainable_variables
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"ъ
_tf_keras_layerа{"class_name": "Reshape", "name": "reshape_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 128]}}}
Њ


kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
l__call__
*m&call_and_return_all_conditional_losses"	
_tf_keras_layerы{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
р
"	variables
#regularization_losses
$trainable_variables
%	keras_api
n__call__
*o&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"class_name": "LeakyReLU", "name": "leaky_re_lu_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
Ќ


&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
p__call__
*q&call_and_return_all_conditional_losses"	
_tf_keras_layerэ{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
р
,	variables
-regularization_losses
.trainable_variables
/	keras_api
r__call__
*s&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"class_name": "LeakyReLU", "name": "leaky_re_lu_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
ѓ	

0kernel
1bias
2	variables
3regularization_losses
4trainable_variables
5	keras_api
t__call__
*u&call_and_return_all_conditional_losses"Ю
_tf_keras_layerД{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
X
0
1
2
3
&4
'5
06
17"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
&4
'5
06
17"
trackable_list_wrapper
Ъ

6layers
7layer_regularization_losses
8metrics
		variables

regularization_losses
9layer_metrics
:non_trainable_variables
trainable_variables
d__call__
c_default_save_signature
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
,
vserving_default"
signature_map
": 
Ш@2dense_5/kernel
:@2dense_5/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

;layers
<layer_regularization_losses
=metrics
	variables
regularization_losses
>layer_metrics
?non_trainable_variables
trainable_variables
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

@layers
Alayer_regularization_losses
Bmetrics
	variables
regularization_losses
Clayer_metrics
Dnon_trainable_variables
trainable_variables
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Elayers
Flayer_regularization_losses
Gmetrics
	variables
regularization_losses
Hlayer_metrics
Inon_trainable_variables
trainable_variables
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
5:32conv2d_transpose_4/kernel
&:$2conv2d_transpose_4/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

Jlayers
Klayer_regularization_losses
Lmetrics
	variables
regularization_losses
Mlayer_metrics
Nnon_trainable_variables
 trainable_variables
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Olayers
Player_regularization_losses
Qmetrics
"	variables
#regularization_losses
Rlayer_metrics
Snon_trainable_variables
$trainable_variables
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
5:32conv2d_transpose_5/kernel
&:$2conv2d_transpose_5/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
­

Tlayers
Ulayer_regularization_losses
Vmetrics
(	variables
)regularization_losses
Wlayer_metrics
Xnon_trainable_variables
*trainable_variables
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Ylayers
Zlayer_regularization_losses
[metrics
,	variables
-regularization_losses
\layer_metrics
]non_trainable_variables
.trainable_variables
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_8/kernel
:2conv2d_8/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
­

^layers
_layer_regularization_losses
`metrics
2	variables
3regularization_losses
alayer_metrics
bnon_trainable_variables
4trainable_variables
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
ч2ф
"__inference__wrapped_model_2043281Н
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *-Ђ*
(%
dense_5_inputџџџџџџџџџШ
њ2ї
+__inference_generator_layer_call_fn_2043576
+__inference_generator_layer_call_fn_2043826
+__inference_generator_layer_call_fn_2043625
+__inference_generator_layer_call_fn_2043805Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_generator_layer_call_and_return_conditional_losses_2043498
F__inference_generator_layer_call_and_return_conditional_losses_2043784
F__inference_generator_layer_call_and_return_conditional_losses_2043716
F__inference_generator_layer_call_and_return_conditional_losses_2043526Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_dense_5_layer_call_fn_2043845Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_5_layer_call_and_return_conditional_losses_2043836Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
к2з
0__inference_leaky_re_lu_12_layer_call_fn_2043855Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_2043850Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
е2в
+__inference_reshape_2_layer_call_fn_2043874Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_reshape_2_layer_call_and_return_conditional_losses_2043869Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
4__inference_conv2d_transpose_4_layer_call_fn_2043325и
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *8Ђ5
30,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Џ2Ќ
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2043315и
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *8Ђ5
30,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
к2з
0__inference_leaky_re_lu_13_layer_call_fn_2043884Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_2043879Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
4__inference_conv2d_transpose_5_layer_call_fn_2043369и
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *8Ђ5
30,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Џ2Ќ
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_2043359и
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *8Ђ5
30,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
к2з
0__inference_leaky_re_lu_14_layer_call_fn_2043894Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_2043889Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_conv2d_8_layer_call_fn_2043914Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_conv2d_8_layer_call_and_return_conditional_losses_2043905Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
вBЯ
%__inference_signature_wrapper_2043648dense_5_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Ї
"__inference__wrapped_model_2043281&'017Ђ4
-Ђ*
(%
dense_5_inputџџџџџџџџџШ
Њ ";Њ8
6
conv2d_8*'
conv2d_8џџџџџџџџџ  л
E__inference_conv2d_8_layer_call_and_return_conditional_losses_204390501JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Г
*__inference_conv2d_8_layer_call_fn_204391401JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџц
O__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2043315JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 О
4__inference_conv2d_transpose_4_layer_call_fn_2043325JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџц
O__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_2043359&'JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 О
4__inference_conv2d_transpose_5_layer_call_fn_2043369&'JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџІ
D__inference_dense_5_layer_call_and_return_conditional_losses_2043836^0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "&Ђ#

0џџџџџџџџџ@
 ~
)__inference_dense_5_layer_call_fn_2043845Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "џџџџџџџџџ@з
F__inference_generator_layer_call_and_return_conditional_losses_2043498&'01?Ђ<
5Ђ2
(%
dense_5_inputџџџџџџџџџШ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 з
F__inference_generator_layer_call_and_return_conditional_losses_2043526&'01?Ђ<
5Ђ2
(%
dense_5_inputџџџџџџџџџШ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Н
F__inference_generator_layer_call_and_return_conditional_losses_2043716s&'018Ђ5
.Ђ+
!
inputsџџџџџџџџџШ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 Н
F__inference_generator_layer_call_and_return_conditional_losses_2043784s&'018Ђ5
.Ђ+
!
inputsџџџџџџџџџШ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 Ў
+__inference_generator_layer_call_fn_2043576&'01?Ђ<
5Ђ2
(%
dense_5_inputџџџџџџџџџШ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЎ
+__inference_generator_layer_call_fn_2043625&'01?Ђ<
5Ђ2
(%
dense_5_inputџџџџџџџџџШ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЇ
+__inference_generator_layer_call_fn_2043805x&'018Ђ5
.Ђ+
!
inputsџџџџџџџџџШ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЇ
+__inference_generator_layer_call_fn_2043826x&'018Ђ5
.Ђ+
!
inputsџџџџџџџџџШ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_2043850Z0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ "&Ђ#

0џџџџџџџџџ@
 
0__inference_leaky_re_lu_12_layer_call_fn_2043855M0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@о
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_2043879JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ж
0__inference_leaky_re_lu_13_layer_call_fn_2043884JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџо
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_2043889JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ж
0__inference_leaky_re_lu_14_layer_call_fn_2043894JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЌ
F__inference_reshape_2_layer_call_and_return_conditional_losses_2043869b0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ ".Ђ+
$!
0џџџџџџџџџ
 
+__inference_reshape_2_layer_call_fn_2043874U0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ "!џџџџџџџџџЛ
%__inference_signature_wrapper_2043648&'01HЂE
Ђ 
>Њ;
9
dense_5_input(%
dense_5_inputџџџџџџџџџШ";Њ8
6
conv2d_8*'
conv2d_8џџџџџџџџџ  