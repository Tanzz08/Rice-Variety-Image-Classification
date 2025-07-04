��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
0sequential/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_2/moving_variance/*
dtype0*
shape: *A
shared_name20sequential/batch_normalization_2/moving_variance
�
Dsequential/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_class
loc:@Variable*
_output_shapes
: *
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
�
,sequential/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_2/moving_mean/*
dtype0*
shape: *=
shared_name.,sequential/batch_normalization_2/moving_mean
�
@sequential/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
�
0sequential/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_1/moving_variance/*
dtype0*
shape: *A
shared_name20sequential/batch_normalization_1/moving_variance
�
Dsequential/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
�
,sequential/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_1/moving_mean/*
dtype0*
shape: *=
shared_name.,sequential/batch_normalization_1/moving_mean
�
@sequential/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
�
.sequential/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *?

debug_name1/sequential/batch_normalization/moving_variance/*
dtype0*
shape:@*?
shared_name0.sequential/batch_normalization/moving_variance
�
Bsequential/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
�
*sequential/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *;

debug_name-+sequential/batch_normalization/moving_mean/*
dtype0*
shape:@*;
shared_name,*sequential/batch_normalization/moving_mean
�
>sequential/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_output_shapes
:@*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
�
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_2/bias/*
dtype0*
shape:*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
:*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_class
loc:@Variable_6*
_output_shapes
:*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:*
dtype0
�
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_2/kernel/*
dtype0*
shape
:@**
shared_namesequential/dense_2/kernel
�
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes

:@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_class
loc:@Variable_7*
_output_shapes

:@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape
:@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
i
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes

:@*
dtype0
�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape:	�@**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	�@*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_class
loc:@Variable_9*
_output_shapes
:	�@*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:	�@*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
j
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:	�@*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:�*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:�*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias*
_class
loc:@Variable_10*
_output_shapes	
:�*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
h
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes	
:�*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape:
�Q�*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel* 
_output_shapes
:
�Q�*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel*
_class
loc:@Variable_11* 
_output_shapes
:
�Q�*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:
�Q�*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
m
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11* 
_output_shapes
:
�Q�*
dtype0
�
%sequential/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_2/beta/*
dtype0*
shape: *6
shared_name'%sequential/batch_normalization_2/beta
�
9sequential/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_output_shapes
: *
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_class
loc:@Variable_12*
_output_shapes
: *
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape: *
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
�
&sequential/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_2/gamma/*
dtype0*
shape: *7
shared_name(&sequential/batch_normalization_2/gamma
�
:sequential/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_output_shapes
: *
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_class
loc:@Variable_13*
_output_shapes
: *
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape: *
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
: *
dtype0
�
sequential/conv2d_2/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_2/bias/*
dtype0*
shape: *)
shared_namesequential/conv2d_2/bias
�
,sequential/conv2d_2/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_output_shapes
: *
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_class
loc:@Variable_14*
_output_shapes
: *
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape: *
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
: *
dtype0
�
sequential/conv2d_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_2/kernel/*
dtype0*
shape:  *+
shared_namesequential/conv2d_2/kernel
�
.sequential/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*&
_output_shapes
:  *
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*
_class
loc:@Variable_15*&
_output_shapes
:  *
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:  *
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
s
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*&
_output_shapes
:  *
dtype0
�
%sequential/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_1/beta/*
dtype0*
shape: *6
shared_name'%sequential/batch_normalization_1/beta
�
9sequential/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_output_shapes
: *
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_class
loc:@Variable_16*
_output_shapes
: *
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape: *
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
: *
dtype0
�
&sequential/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_1/gamma/*
dtype0*
shape: *7
shared_name(&sequential/batch_normalization_1/gamma
�
:sequential/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_output_shapes
: *
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_class
loc:@Variable_17*
_output_shapes
: *
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape: *
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
: *
dtype0
�
sequential/conv2d_1/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_1/bias/*
dtype0*
shape: *)
shared_namesequential/conv2d_1/bias
�
,sequential/conv2d_1/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_output_shapes
: *
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_class
loc:@Variable_18*
_output_shapes
: *
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape: *
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
: *
dtype0
�
sequential/conv2d_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_1/kernel/*
dtype0*
shape:@ *+
shared_namesequential/conv2d_1/kernel
�
.sequential/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*&
_output_shapes
:@ *
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*
_class
loc:@Variable_19*&
_output_shapes
:@ *
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:@ *
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
s
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*&
_output_shapes
:@ *
dtype0
�
#sequential/batch_normalization/betaVarHandleOp*
_output_shapes
: *4

debug_name&$sequential/batch_normalization/beta/*
dtype0*
shape:@*4
shared_name%#sequential/batch_normalization/beta
�
7sequential/batch_normalization/beta/Read/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_output_shapes
:@*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_class
loc:@Variable_20*
_output_shapes
:@*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:@*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
g
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
:@*
dtype0
�
$sequential/batch_normalization/gammaVarHandleOp*
_output_shapes
: *5

debug_name'%sequential/batch_normalization/gamma/*
dtype0*
shape:@*5
shared_name&$sequential/batch_normalization/gamma
�
8sequential/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_output_shapes
:@*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_class
loc:@Variable_21*
_output_shapes
:@*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:@*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
g
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes
:@*
dtype0
�
sequential/conv2d/biasVarHandleOp*
_output_shapes
: *'

debug_namesequential/conv2d/bias/*
dtype0*
shape:@*'
shared_namesequential/conv2d/bias
}
*sequential/conv2d/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_output_shapes
:@*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_class
loc:@Variable_22*
_output_shapes
:@*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:@*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
g
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
:@*
dtype0
�
sequential/conv2d/kernelVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d/kernel/*
dtype0*
shape:@*)
shared_namesequential/conv2d/kernel
�
,sequential/conv2d/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d/kernel*&
_output_shapes
:@*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/kernel*
_class
loc:@Variable_23*&
_output_shapes
:@*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:@*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
s
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*&
_output_shapes
:@*
dtype0
�
%adam/sequential_dense_2_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_2_bias_velocity/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_2_bias_velocity
�
9adam/sequential_dense_2_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_velocity*
_class
loc:@Variable_24*
_output_shapes
:*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:*
dtype0
�
%adam/sequential_dense_2_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_2_bias_momentum/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_2_bias_momentum
�
9adam/sequential_dense_2_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_momentum*
_class
loc:@Variable_25*
_output_shapes
:*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
g
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes
:*
dtype0
�
'adam/sequential_dense_2_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_2_kernel_velocity/*
dtype0*
shape
:@*8
shared_name)'adam/sequential_dense_2_kernel_velocity
�
;adam/sequential_dense_2_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_velocity*
_output_shapes

:@*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_velocity*
_class
loc:@Variable_26*
_output_shapes

:@*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape
:@*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
k
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes

:@*
dtype0
�
'adam/sequential_dense_2_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_2_kernel_momentum/*
dtype0*
shape
:@*8
shared_name)'adam/sequential_dense_2_kernel_momentum
�
;adam/sequential_dense_2_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_momentum*
_output_shapes

:@*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_momentum*
_class
loc:@Variable_27*
_output_shapes

:@*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape
:@*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
k
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes

:@*
dtype0
�
%adam/sequential_dense_1_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_velocity/*
dtype0*
shape:@*6
shared_name'%adam/sequential_dense_1_bias_velocity
�
9adam/sequential_dense_1_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_class
loc:@Variable_28*
_output_shapes
:@*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:@*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
:@*
dtype0
�
%adam/sequential_dense_1_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_momentum/*
dtype0*
shape:@*6
shared_name'%adam/sequential_dense_1_bias_momentum
�
9adam/sequential_dense_1_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_class
loc:@Variable_29*
_output_shapes
:@*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:@*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
g
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
:@*
dtype0
�
'adam/sequential_dense_1_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_velocity/*
dtype0*
shape:	�@*8
shared_name)'adam/sequential_dense_1_kernel_velocity
�
;adam/sequential_dense_1_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_output_shapes
:	�@*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_class
loc:@Variable_30*
_output_shapes
:	�@*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape:	�@*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
l
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*
_output_shapes
:	�@*
dtype0
�
'adam/sequential_dense_1_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_momentum/*
dtype0*
shape:	�@*8
shared_name)'adam/sequential_dense_1_kernel_momentum
�
;adam/sequential_dense_1_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_output_shapes
:	�@*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_class
loc:@Variable_31*
_output_shapes
:	�@*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape:	�@*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
l
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*
_output_shapes
:	�@*
dtype0
�
#adam/sequential_dense_bias_velocityVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_velocity/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_velocity
�
7adam/sequential_dense_bias_velocity/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_class
loc:@Variable_32*
_output_shapes	
:�*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:�*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
h
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes	
:�*
dtype0
�
#adam/sequential_dense_bias_momentumVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_momentum/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_momentum
�
7adam/sequential_dense_bias_momentum/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_class
loc:@Variable_33*
_output_shapes	
:�*
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape:�*
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
h
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes	
:�*
dtype0
�
%adam/sequential_dense_kernel_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_velocity/*
dtype0*
shape:
�Q�*6
shared_name'%adam/sequential_dense_kernel_velocity
�
9adam/sequential_dense_kernel_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity* 
_output_shapes
:
�Q�*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity*
_class
loc:@Variable_34* 
_output_shapes
:
�Q�*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:
�Q�*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
m
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34* 
_output_shapes
:
�Q�*
dtype0
�
%adam/sequential_dense_kernel_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_momentum/*
dtype0*
shape:
�Q�*6
shared_name'%adam/sequential_dense_kernel_momentum
�
9adam/sequential_dense_kernel_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum* 
_output_shapes
:
�Q�*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum*
_class
loc:@Variable_35* 
_output_shapes
:
�Q�*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape:
�Q�*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
m
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35* 
_output_shapes
:
�Q�*
dtype0
�
3adam/sequential_batch_normalization_2_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_2_beta_velocity/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_2_beta_velocity
�
Gadam/sequential_batch_normalization_2_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_velocity*
_output_shapes
: *
dtype0
�
&Variable_36/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_velocity*
_class
loc:@Variable_36*
_output_shapes
: *
dtype0
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0*
shape: *
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0
g
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36*
_output_shapes
: *
dtype0
�
3adam/sequential_batch_normalization_2_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_2_beta_momentum/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_2_beta_momentum
�
Gadam/sequential_batch_normalization_2_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_momentum*
_output_shapes
: *
dtype0
�
&Variable_37/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_momentum*
_class
loc:@Variable_37*
_output_shapes
: *
dtype0
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0*
shape: *
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0
g
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_2_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_2_gamma_velocity/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_2_gamma_velocity
�
Hadam/sequential_batch_normalization_2_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_velocity*
_output_shapes
: *
dtype0
�
&Variable_38/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_velocity*
_class
loc:@Variable_38*
_output_shapes
: *
dtype0
�
Variable_38VarHandleOp*
_class
loc:@Variable_38*
_output_shapes
: *

debug_nameVariable_38/*
dtype0*
shape: *
shared_nameVariable_38
g
,Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_38*
_output_shapes
: 
h
Variable_38/AssignAssignVariableOpVariable_38&Variable_38/Initializer/ReadVariableOp*
dtype0
g
Variable_38/Read/ReadVariableOpReadVariableOpVariable_38*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_2_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_2_gamma_momentum/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_2_gamma_momentum
�
Hadam/sequential_batch_normalization_2_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_momentum*
_output_shapes
: *
dtype0
�
&Variable_39/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_momentum*
_class
loc:@Variable_39*
_output_shapes
: *
dtype0
�
Variable_39VarHandleOp*
_class
loc:@Variable_39*
_output_shapes
: *

debug_nameVariable_39/*
dtype0*
shape: *
shared_nameVariable_39
g
,Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_39*
_output_shapes
: 
h
Variable_39/AssignAssignVariableOpVariable_39&Variable_39/Initializer/ReadVariableOp*
dtype0
g
Variable_39/Read/ReadVariableOpReadVariableOpVariable_39*
_output_shapes
: *
dtype0
�
&adam/sequential_conv2d_2_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_2_bias_velocity/*
dtype0*
shape: *7
shared_name(&adam/sequential_conv2d_2_bias_velocity
�
:adam/sequential_conv2d_2_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_40/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_velocity*
_class
loc:@Variable_40*
_output_shapes
: *
dtype0
�
Variable_40VarHandleOp*
_class
loc:@Variable_40*
_output_shapes
: *

debug_nameVariable_40/*
dtype0*
shape: *
shared_nameVariable_40
g
,Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_40*
_output_shapes
: 
h
Variable_40/AssignAssignVariableOpVariable_40&Variable_40/Initializer/ReadVariableOp*
dtype0
g
Variable_40/Read/ReadVariableOpReadVariableOpVariable_40*
_output_shapes
: *
dtype0
�
&adam/sequential_conv2d_2_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_2_bias_momentum/*
dtype0*
shape: *7
shared_name(&adam/sequential_conv2d_2_bias_momentum
�
:adam/sequential_conv2d_2_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_41/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_momentum*
_class
loc:@Variable_41*
_output_shapes
: *
dtype0
�
Variable_41VarHandleOp*
_class
loc:@Variable_41*
_output_shapes
: *

debug_nameVariable_41/*
dtype0*
shape: *
shared_nameVariable_41
g
,Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_41*
_output_shapes
: 
h
Variable_41/AssignAssignVariableOpVariable_41&Variable_41/Initializer/ReadVariableOp*
dtype0
g
Variable_41/Read/ReadVariableOpReadVariableOpVariable_41*
_output_shapes
: *
dtype0
�
(adam/sequential_conv2d_2_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_2_kernel_velocity/*
dtype0*
shape:  *9
shared_name*(adam/sequential_conv2d_2_kernel_velocity
�
<adam/sequential_conv2d_2_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_velocity*&
_output_shapes
:  *
dtype0
�
&Variable_42/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_velocity*
_class
loc:@Variable_42*&
_output_shapes
:  *
dtype0
�
Variable_42VarHandleOp*
_class
loc:@Variable_42*
_output_shapes
: *

debug_nameVariable_42/*
dtype0*
shape:  *
shared_nameVariable_42
g
,Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_42*
_output_shapes
: 
h
Variable_42/AssignAssignVariableOpVariable_42&Variable_42/Initializer/ReadVariableOp*
dtype0
s
Variable_42/Read/ReadVariableOpReadVariableOpVariable_42*&
_output_shapes
:  *
dtype0
�
(adam/sequential_conv2d_2_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_2_kernel_momentum/*
dtype0*
shape:  *9
shared_name*(adam/sequential_conv2d_2_kernel_momentum
�
<adam/sequential_conv2d_2_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_momentum*&
_output_shapes
:  *
dtype0
�
&Variable_43/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_momentum*
_class
loc:@Variable_43*&
_output_shapes
:  *
dtype0
�
Variable_43VarHandleOp*
_class
loc:@Variable_43*
_output_shapes
: *

debug_nameVariable_43/*
dtype0*
shape:  *
shared_nameVariable_43
g
,Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_43*
_output_shapes
: 
h
Variable_43/AssignAssignVariableOpVariable_43&Variable_43/Initializer/ReadVariableOp*
dtype0
s
Variable_43/Read/ReadVariableOpReadVariableOpVariable_43*&
_output_shapes
:  *
dtype0
�
3adam/sequential_batch_normalization_1_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_1_beta_velocity/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_1_beta_velocity
�
Gadam/sequential_batch_normalization_1_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_velocity*
_output_shapes
: *
dtype0
�
&Variable_44/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_velocity*
_class
loc:@Variable_44*
_output_shapes
: *
dtype0
�
Variable_44VarHandleOp*
_class
loc:@Variable_44*
_output_shapes
: *

debug_nameVariable_44/*
dtype0*
shape: *
shared_nameVariable_44
g
,Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_44*
_output_shapes
: 
h
Variable_44/AssignAssignVariableOpVariable_44&Variable_44/Initializer/ReadVariableOp*
dtype0
g
Variable_44/Read/ReadVariableOpReadVariableOpVariable_44*
_output_shapes
: *
dtype0
�
3adam/sequential_batch_normalization_1_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_1_beta_momentum/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_1_beta_momentum
�
Gadam/sequential_batch_normalization_1_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_momentum*
_output_shapes
: *
dtype0
�
&Variable_45/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_momentum*
_class
loc:@Variable_45*
_output_shapes
: *
dtype0
�
Variable_45VarHandleOp*
_class
loc:@Variable_45*
_output_shapes
: *

debug_nameVariable_45/*
dtype0*
shape: *
shared_nameVariable_45
g
,Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_45*
_output_shapes
: 
h
Variable_45/AssignAssignVariableOpVariable_45&Variable_45/Initializer/ReadVariableOp*
dtype0
g
Variable_45/Read/ReadVariableOpReadVariableOpVariable_45*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_1_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_1_gamma_velocity/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_1_gamma_velocity
�
Hadam/sequential_batch_normalization_1_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_velocity*
_output_shapes
: *
dtype0
�
&Variable_46/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_velocity*
_class
loc:@Variable_46*
_output_shapes
: *
dtype0
�
Variable_46VarHandleOp*
_class
loc:@Variable_46*
_output_shapes
: *

debug_nameVariable_46/*
dtype0*
shape: *
shared_nameVariable_46
g
,Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_46*
_output_shapes
: 
h
Variable_46/AssignAssignVariableOpVariable_46&Variable_46/Initializer/ReadVariableOp*
dtype0
g
Variable_46/Read/ReadVariableOpReadVariableOpVariable_46*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_1_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_1_gamma_momentum/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_1_gamma_momentum
�
Hadam/sequential_batch_normalization_1_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_momentum*
_output_shapes
: *
dtype0
�
&Variable_47/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_momentum*
_class
loc:@Variable_47*
_output_shapes
: *
dtype0
�
Variable_47VarHandleOp*
_class
loc:@Variable_47*
_output_shapes
: *

debug_nameVariable_47/*
dtype0*
shape: *
shared_nameVariable_47
g
,Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_47*
_output_shapes
: 
h
Variable_47/AssignAssignVariableOpVariable_47&Variable_47/Initializer/ReadVariableOp*
dtype0
g
Variable_47/Read/ReadVariableOpReadVariableOpVariable_47*
_output_shapes
: *
dtype0
�
&adam/sequential_conv2d_1_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_1_bias_velocity/*
dtype0*
shape: *7
shared_name(&adam/sequential_conv2d_1_bias_velocity
�
:adam/sequential_conv2d_1_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_48/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_velocity*
_class
loc:@Variable_48*
_output_shapes
: *
dtype0
�
Variable_48VarHandleOp*
_class
loc:@Variable_48*
_output_shapes
: *

debug_nameVariable_48/*
dtype0*
shape: *
shared_nameVariable_48
g
,Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_48*
_output_shapes
: 
h
Variable_48/AssignAssignVariableOpVariable_48&Variable_48/Initializer/ReadVariableOp*
dtype0
g
Variable_48/Read/ReadVariableOpReadVariableOpVariable_48*
_output_shapes
: *
dtype0
�
&adam/sequential_conv2d_1_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_1_bias_momentum/*
dtype0*
shape: *7
shared_name(&adam/sequential_conv2d_1_bias_momentum
�
:adam/sequential_conv2d_1_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_49/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_momentum*
_class
loc:@Variable_49*
_output_shapes
: *
dtype0
�
Variable_49VarHandleOp*
_class
loc:@Variable_49*
_output_shapes
: *

debug_nameVariable_49/*
dtype0*
shape: *
shared_nameVariable_49
g
,Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_49*
_output_shapes
: 
h
Variable_49/AssignAssignVariableOpVariable_49&Variable_49/Initializer/ReadVariableOp*
dtype0
g
Variable_49/Read/ReadVariableOpReadVariableOpVariable_49*
_output_shapes
: *
dtype0
�
(adam/sequential_conv2d_1_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_1_kernel_velocity/*
dtype0*
shape:@ *9
shared_name*(adam/sequential_conv2d_1_kernel_velocity
�
<adam/sequential_conv2d_1_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_velocity*&
_output_shapes
:@ *
dtype0
�
&Variable_50/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_velocity*
_class
loc:@Variable_50*&
_output_shapes
:@ *
dtype0
�
Variable_50VarHandleOp*
_class
loc:@Variable_50*
_output_shapes
: *

debug_nameVariable_50/*
dtype0*
shape:@ *
shared_nameVariable_50
g
,Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_50*
_output_shapes
: 
h
Variable_50/AssignAssignVariableOpVariable_50&Variable_50/Initializer/ReadVariableOp*
dtype0
s
Variable_50/Read/ReadVariableOpReadVariableOpVariable_50*&
_output_shapes
:@ *
dtype0
�
(adam/sequential_conv2d_1_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_1_kernel_momentum/*
dtype0*
shape:@ *9
shared_name*(adam/sequential_conv2d_1_kernel_momentum
�
<adam/sequential_conv2d_1_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_momentum*&
_output_shapes
:@ *
dtype0
�
&Variable_51/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_momentum*
_class
loc:@Variable_51*&
_output_shapes
:@ *
dtype0
�
Variable_51VarHandleOp*
_class
loc:@Variable_51*
_output_shapes
: *

debug_nameVariable_51/*
dtype0*
shape:@ *
shared_nameVariable_51
g
,Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_51*
_output_shapes
: 
h
Variable_51/AssignAssignVariableOpVariable_51&Variable_51/Initializer/ReadVariableOp*
dtype0
s
Variable_51/Read/ReadVariableOpReadVariableOpVariable_51*&
_output_shapes
:@ *
dtype0
�
1adam/sequential_batch_normalization_beta_velocityVarHandleOp*
_output_shapes
: *B

debug_name42adam/sequential_batch_normalization_beta_velocity/*
dtype0*
shape:@*B
shared_name31adam/sequential_batch_normalization_beta_velocity
�
Eadam/sequential_batch_normalization_beta_velocity/Read/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_velocity*
_output_shapes
:@*
dtype0
�
&Variable_52/Initializer/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_velocity*
_class
loc:@Variable_52*
_output_shapes
:@*
dtype0
�
Variable_52VarHandleOp*
_class
loc:@Variable_52*
_output_shapes
: *

debug_nameVariable_52/*
dtype0*
shape:@*
shared_nameVariable_52
g
,Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_52*
_output_shapes
: 
h
Variable_52/AssignAssignVariableOpVariable_52&Variable_52/Initializer/ReadVariableOp*
dtype0
g
Variable_52/Read/ReadVariableOpReadVariableOpVariable_52*
_output_shapes
:@*
dtype0
�
1adam/sequential_batch_normalization_beta_momentumVarHandleOp*
_output_shapes
: *B

debug_name42adam/sequential_batch_normalization_beta_momentum/*
dtype0*
shape:@*B
shared_name31adam/sequential_batch_normalization_beta_momentum
�
Eadam/sequential_batch_normalization_beta_momentum/Read/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_momentum*
_output_shapes
:@*
dtype0
�
&Variable_53/Initializer/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_momentum*
_class
loc:@Variable_53*
_output_shapes
:@*
dtype0
�
Variable_53VarHandleOp*
_class
loc:@Variable_53*
_output_shapes
: *

debug_nameVariable_53/*
dtype0*
shape:@*
shared_nameVariable_53
g
,Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_53*
_output_shapes
: 
h
Variable_53/AssignAssignVariableOpVariable_53&Variable_53/Initializer/ReadVariableOp*
dtype0
g
Variable_53/Read/ReadVariableOpReadVariableOpVariable_53*
_output_shapes
:@*
dtype0
�
2adam/sequential_batch_normalization_gamma_velocityVarHandleOp*
_output_shapes
: *C

debug_name53adam/sequential_batch_normalization_gamma_velocity/*
dtype0*
shape:@*C
shared_name42adam/sequential_batch_normalization_gamma_velocity
�
Fadam/sequential_batch_normalization_gamma_velocity/Read/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_velocity*
_output_shapes
:@*
dtype0
�
&Variable_54/Initializer/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_velocity*
_class
loc:@Variable_54*
_output_shapes
:@*
dtype0
�
Variable_54VarHandleOp*
_class
loc:@Variable_54*
_output_shapes
: *

debug_nameVariable_54/*
dtype0*
shape:@*
shared_nameVariable_54
g
,Variable_54/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_54*
_output_shapes
: 
h
Variable_54/AssignAssignVariableOpVariable_54&Variable_54/Initializer/ReadVariableOp*
dtype0
g
Variable_54/Read/ReadVariableOpReadVariableOpVariable_54*
_output_shapes
:@*
dtype0
�
2adam/sequential_batch_normalization_gamma_momentumVarHandleOp*
_output_shapes
: *C

debug_name53adam/sequential_batch_normalization_gamma_momentum/*
dtype0*
shape:@*C
shared_name42adam/sequential_batch_normalization_gamma_momentum
�
Fadam/sequential_batch_normalization_gamma_momentum/Read/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_momentum*
_output_shapes
:@*
dtype0
�
&Variable_55/Initializer/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_momentum*
_class
loc:@Variable_55*
_output_shapes
:@*
dtype0
�
Variable_55VarHandleOp*
_class
loc:@Variable_55*
_output_shapes
: *

debug_nameVariable_55/*
dtype0*
shape:@*
shared_nameVariable_55
g
,Variable_55/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_55*
_output_shapes
: 
h
Variable_55/AssignAssignVariableOpVariable_55&Variable_55/Initializer/ReadVariableOp*
dtype0
g
Variable_55/Read/ReadVariableOpReadVariableOpVariable_55*
_output_shapes
:@*
dtype0
�
$adam/sequential_conv2d_bias_velocityVarHandleOp*
_output_shapes
: *5

debug_name'%adam/sequential_conv2d_bias_velocity/*
dtype0*
shape:@*5
shared_name&$adam/sequential_conv2d_bias_velocity
�
8adam/sequential_conv2d_bias_velocity/Read/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_56/Initializer/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_velocity*
_class
loc:@Variable_56*
_output_shapes
:@*
dtype0
�
Variable_56VarHandleOp*
_class
loc:@Variable_56*
_output_shapes
: *

debug_nameVariable_56/*
dtype0*
shape:@*
shared_nameVariable_56
g
,Variable_56/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_56*
_output_shapes
: 
h
Variable_56/AssignAssignVariableOpVariable_56&Variable_56/Initializer/ReadVariableOp*
dtype0
g
Variable_56/Read/ReadVariableOpReadVariableOpVariable_56*
_output_shapes
:@*
dtype0
�
$adam/sequential_conv2d_bias_momentumVarHandleOp*
_output_shapes
: *5

debug_name'%adam/sequential_conv2d_bias_momentum/*
dtype0*
shape:@*5
shared_name&$adam/sequential_conv2d_bias_momentum
�
8adam/sequential_conv2d_bias_momentum/Read/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_57/Initializer/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_momentum*
_class
loc:@Variable_57*
_output_shapes
:@*
dtype0
�
Variable_57VarHandleOp*
_class
loc:@Variable_57*
_output_shapes
: *

debug_nameVariable_57/*
dtype0*
shape:@*
shared_nameVariable_57
g
,Variable_57/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_57*
_output_shapes
: 
h
Variable_57/AssignAssignVariableOpVariable_57&Variable_57/Initializer/ReadVariableOp*
dtype0
g
Variable_57/Read/ReadVariableOpReadVariableOpVariable_57*
_output_shapes
:@*
dtype0
�
&adam/sequential_conv2d_kernel_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_kernel_velocity/*
dtype0*
shape:@*7
shared_name(&adam/sequential_conv2d_kernel_velocity
�
:adam/sequential_conv2d_kernel_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_velocity*&
_output_shapes
:@*
dtype0
�
&Variable_58/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_velocity*
_class
loc:@Variable_58*&
_output_shapes
:@*
dtype0
�
Variable_58VarHandleOp*
_class
loc:@Variable_58*
_output_shapes
: *

debug_nameVariable_58/*
dtype0*
shape:@*
shared_nameVariable_58
g
,Variable_58/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_58*
_output_shapes
: 
h
Variable_58/AssignAssignVariableOpVariable_58&Variable_58/Initializer/ReadVariableOp*
dtype0
s
Variable_58/Read/ReadVariableOpReadVariableOpVariable_58*&
_output_shapes
:@*
dtype0
�
&adam/sequential_conv2d_kernel_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_kernel_momentum/*
dtype0*
shape:@*7
shared_name(&adam/sequential_conv2d_kernel_momentum
�
:adam/sequential_conv2d_kernel_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_momentum*&
_output_shapes
:@*
dtype0
�
&Variable_59/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_momentum*
_class
loc:@Variable_59*&
_output_shapes
:@*
dtype0
�
Variable_59VarHandleOp*
_class
loc:@Variable_59*
_output_shapes
: *

debug_nameVariable_59/*
dtype0*
shape:@*
shared_nameVariable_59
g
,Variable_59/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_59*
_output_shapes
: 
h
Variable_59/AssignAssignVariableOpVariable_59&Variable_59/Initializer/ReadVariableOp*
dtype0
s
Variable_59/Read/ReadVariableOpReadVariableOpVariable_59*&
_output_shapes
:@*
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_60/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_60*
_output_shapes
: *
dtype0
�
Variable_60VarHandleOp*
_class
loc:@Variable_60*
_output_shapes
: *

debug_nameVariable_60/*
dtype0*
shape: *
shared_nameVariable_60
g
,Variable_60/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_60*
_output_shapes
: 
h
Variable_60/AssignAssignVariableOpVariable_60&Variable_60/Initializer/ReadVariableOp*
dtype0
c
Variable_60/Read/ReadVariableOpReadVariableOpVariable_60*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_61/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_61*
_output_shapes
: *
dtype0	
�
Variable_61VarHandleOp*
_class
loc:@Variable_61*
_output_shapes
: *

debug_nameVariable_61/*
dtype0	*
shape: *
shared_nameVariable_61
g
,Variable_61/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_61*
_output_shapes
: 
h
Variable_61/AssignAssignVariableOpVariable_61&Variable_61/Initializer/ReadVariableOp*
dtype0	
c
Variable_61/Read/ReadVariableOpReadVariableOpVariable_61*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential/conv2d/kernelsequential/conv2d/bias*sequential/batch_normalization/moving_mean.sequential/batch_normalization/moving_variance$sequential/batch_normalization/gamma#sequential/batch_normalization/betasequential/conv2d_1/kernelsequential/conv2d_1/bias,sequential/batch_normalization_1/moving_mean0sequential/batch_normalization_1/moving_variance&sequential/batch_normalization_1/gamma%sequential/batch_normalization_1/betasequential/conv2d_2/kernelsequential/conv2d_2/bias,sequential/batch_normalization_2/moving_mean0sequential/batch_normalization_2/moving_variance&sequential/batch_normalization_2/gamma%sequential/batch_normalization_2/betasequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *=
f8R6
4__inference_signature_wrapper_serving_default_422172

NoOpNoOp
�M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�L
value�LB�L B�L
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
z
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15*
* 

.serving_default* 
* 
* 
* 
* 
* 
z
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15*
z
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15*
* 
* 

/trace_0* 
�
0
1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
F24
G25
H26
I27
J28
K29
L30
M31
N32
O33
P34
Q35
R36
S37*
�
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15
d16
e17*
* 
UO
VARIABLE_VALUEVariable_610optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_603optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
]
f_inbound_nodes
g_outbound_nodes
h_losses
i	_loss_ids
j_losses_override* 
�
T_kernel
Ubias
k_inbound_nodes
l_outbound_nodes
m_losses
n	_loss_ids
o_losses_override
p_build_shapes_dict*
�
	Vgamma
Wbeta
qmoving_mean
rmoving_variance
s_inbound_nodes
t_outbound_nodes
u_losses
v	_loss_ids
w_losses_override
x_reduction_axes
y_build_shapes_dict*
]
z_inbound_nodes
{_outbound_nodes
|_losses
}	_loss_ids
~_losses_override* 
�
X_kernel
Ybias
_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
	Zgamma
[beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
\_kernel
]bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
	^gamma
_beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
`_kernel
abias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
b_kernel
cbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
d_kernel
ebias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
VP
VARIABLE_VALUEVariable_591optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_581optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_571optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_561optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_551optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_541optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_531optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_521optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_512optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_502optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_492optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_482optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_472optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_462optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_452optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_442optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_432optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_422optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_412optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_402optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_392optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_382optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_372optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_362optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_352optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_342optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_332optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_322optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_312optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_302optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_292optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_282optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_272optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_262optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_252optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_242optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_23;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_22;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_21;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_20;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_19;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_18;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_17;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_16;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_15;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_14;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_13<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_12<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_11<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_10<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_9<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_8<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_7<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_6<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUE
Variable_50_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Variable_44_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUE
Variable_30_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Variable_24_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUE
Variable_10_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable4_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_61Variable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *(
f#R!
__inference__traced_save_422922
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_61Variable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *+
f&R$
"__inference__traced_restore_423117��
��
�
"__inference_serving_default_422118

inputsS
9sequential_1_conv2d_1_convolution_readvariableop_resource:@C
5sequential_1_conv2d_1_reshape_readvariableop_resource:@M
?sequential_1_batch_normalization_1_cast_readvariableop_resource:@O
Asequential_1_batch_normalization_1_cast_1_readvariableop_resource:@O
Asequential_1_batch_normalization_1_cast_2_readvariableop_resource:@O
Asequential_1_batch_normalization_1_cast_3_readvariableop_resource:@U
;sequential_1_conv2d_1_2_convolution_readvariableop_resource:@ E
7sequential_1_conv2d_1_2_reshape_readvariableop_resource: O
Asequential_1_batch_normalization_1_2_cast_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_1_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_2_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_3_readvariableop_resource: U
;sequential_1_conv2d_2_1_convolution_readvariableop_resource:  E
7sequential_1_conv2d_2_1_reshape_readvariableop_resource: O
Asequential_1_batch_normalization_2_1_cast_readvariableop_resource: Q
Csequential_1_batch_normalization_2_1_cast_1_readvariableop_resource: Q
Csequential_1_batch_normalization_2_1_cast_2_readvariableop_resource: Q
Csequential_1_batch_normalization_2_1_cast_3_readvariableop_resource: E
1sequential_1_dense_1_cast_readvariableop_resource:
�Q�C
4sequential_1_dense_1_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_2_cast_readvariableop_resource:	�@D
6sequential_1_dense_1_2_biasadd_readvariableop_resource:@E
3sequential_1_dense_2_1_cast_readvariableop_resource:@D
6sequential_1_dense_2_1_biasadd_readvariableop_resource:
identity��6sequential_1/batch_normalization_1/Cast/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp�,sequential_1/conv2d_1/Reshape/ReadVariableOp�0sequential_1/conv2d_1/convolution/ReadVariableOp�.sequential_1/conv2d_1_2/Reshape/ReadVariableOp�2sequential_1/conv2d_1_2/convolution/ReadVariableOp�.sequential_1/conv2d_2_1/Reshape/ReadVariableOp�2sequential_1/conv2d_2_1/convolution/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�(sequential_1/dense_1/Cast/ReadVariableOp�-sequential_1/dense_1_2/BiasAdd/ReadVariableOp�*sequential_1/dense_1_2/Cast/ReadVariableOp�-sequential_1/dense_2_1/BiasAdd/ReadVariableOp�*sequential_1/dense_2_1/Cast/ReadVariableOp�
0sequential_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9sequential_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
:@*
dtype0�
!sequential_1/conv2d_1/convolutionConv2Dinputs8sequential_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
,sequential_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0|
#sequential_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
sequential_1/conv2d_1/ReshapeReshape4sequential_1/conv2d_1/Reshape/ReadVariableOp:value:0,sequential_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@u
sequential_1/conv2d_1/SqueezeSqueeze&sequential_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
:@�
sequential_1/conv2d_1/BiasAddBiasAdd*sequential_1/conv2d_1/convolution:output:0&sequential_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:�����������@�
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
6sequential_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0w
2sequential_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
0sequential_1/batch_normalization_1/batchnorm/addAddV2@sequential_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
0sequential_1/batch_normalization_1/batchnorm/mulMul6sequential_1/batch_normalization_1/batchnorm/Rsqrt:y:0@sequential_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_1/batchnorm/mul_1Mul(sequential_1/conv2d_1/Relu:activations:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:�����������@�
2sequential_1/batch_normalization_1/batchnorm/mul_2Mul>sequential_1/batch_normalization_1/Cast/ReadVariableOp:value:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
0sequential_1/batch_normalization_1/batchnorm/subSub@sequential_1/batch_normalization_1/Cast_3/ReadVariableOp:value:06sequential_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_1/batchnorm/add_1AddV26sequential_1/batch_normalization_1/batchnorm/mul_1:z:04sequential_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:�����������@�
&sequential_1/max_pooling2d_1/MaxPool2dMaxPool6sequential_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
#sequential_1/conv2d_1_2/convolutionConv2D/sequential_1/max_pooling2d_1/MaxPool2d:output:0:sequential_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK *
paddingSAME*
strides
�
.sequential_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%sequential_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1/conv2d_1_2/ReshapeReshape6sequential_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
: y
sequential_1/conv2d_1_2/SqueezeSqueeze(sequential_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
: �
sequential_1/conv2d_1_2/BiasAddBiasAdd,sequential_1/conv2d_1_2/convolution:output:0(sequential_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������KK �
sequential_1/conv2d_1_2/ReluRelu(sequential_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK �
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4sequential_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_1_2/batchnorm/addAddV2Bsequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1_2/batchnorm/mulMul8sequential_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/mul_1Mul*sequential_1/conv2d_1_2/Relu:activations:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������KK �
4sequential_1/batch_normalization_1_2/batchnorm/mul_2Mul@sequential_1/batch_normalization_1_2/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1_2/batchnorm/subSubBsequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/add_1AddV28sequential_1/batch_normalization_1_2/batchnorm/mul_1:z:06sequential_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������KK �
(sequential_1/max_pooling2d_1_2/MaxPool2dMaxPool8sequential_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������%% *
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
:  *
dtype0�
#sequential_1/conv2d_2_1/convolutionConv2D1sequential_1/max_pooling2d_1_2/MaxPool2d:output:0:sequential_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%% *
paddingSAME*
strides
�
.sequential_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%sequential_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1/conv2d_2_1/ReshapeReshape6sequential_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: y
sequential_1/conv2d_2_1/SqueezeSqueeze(sequential_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes
: �
sequential_1/conv2d_2_1/BiasAddBiasAdd,sequential_1/conv2d_2_1/convolution:output:0(sequential_1/conv2d_2_1/Squeeze:output:0*
T0*/
_output_shapes
:���������%% �
sequential_1/conv2d_2_1/ReluRelu(sequential_1/conv2d_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������%% �
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4sequential_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_2_1/batchnorm/addAddV2Bsequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_2_1/batchnorm/mulMul8sequential_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_2_1/batchnorm/mul_1Mul*sequential_1/conv2d_2_1/Relu:activations:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������%% �
4sequential_1/batch_normalization_2_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_2_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_2_1/batchnorm/subSubBsequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_2_1/batchnorm/add_1AddV28sequential_1/batch_normalization_2_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������%% �
(sequential_1/max_pooling2d_2_1/MaxPool2dMaxPool8sequential_1/batch_normalization_2_1/batchnorm/add_1:z:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
u
$sequential_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����(  �
sequential_1/flatten_1/ReshapeReshape1sequential_1/max_pooling2d_2_1/MaxPool2d:output:0-sequential_1/flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:����������Q�
(sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp1sequential_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype0�
sequential_1/dense_1/MatMulMatMul'sequential_1/flatten_1/Reshape:output:00sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_1/dense_1_2/MatMulMatMul'sequential_1/dense_1/Relu:activations:02sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-sequential_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_1/dense_1_2/BiasAddBiasAdd'sequential_1/dense_1_2/MatMul:product:05sequential_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
sequential_1/dense_1_2/ReluRelu'sequential_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*sequential_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_1/dense_2_1/MatMulMatMul)sequential_1/dense_1_2/Relu:activations:02sequential_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_2_1/BiasAddBiasAdd'sequential_1/dense_2_1/MatMul:product:05sequential_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1/dense_2_1/SoftmaxSoftmax'sequential_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_1/dense_2_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp7^sequential_1/batch_normalization_1/Cast/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_1/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_2/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_1_2/Cast/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_2_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp-^sequential_1/conv2d_1/Reshape/ReadVariableOp1^sequential_1/conv2d_1/convolution/ReadVariableOp/^sequential_1/conv2d_1_2/Reshape/ReadVariableOp3^sequential_1/conv2d_1_2/convolution/ReadVariableOp/^sequential_1/conv2d_2_1/Reshape/ReadVariableOp3^sequential_1/conv2d_2_1/convolution/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp)^sequential_1/dense_1/Cast/ReadVariableOp.^sequential_1/dense_1_2/BiasAdd/ReadVariableOp+^sequential_1/dense_1_2/Cast/ReadVariableOp.^sequential_1/dense_2_1/BiasAdd/ReadVariableOp+^sequential_1/dense_2_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 2p
6sequential_1/batch_normalization_1/Cast/ReadVariableOp6sequential_1/batch_normalization_1/Cast/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp2\
,sequential_1/conv2d_1/Reshape/ReadVariableOp,sequential_1/conv2d_1/Reshape/ReadVariableOp2d
0sequential_1/conv2d_1/convolution/ReadVariableOp0sequential_1/conv2d_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_1_2/Reshape/ReadVariableOp.sequential_1/conv2d_1_2/Reshape/ReadVariableOp2h
2sequential_1/conv2d_1_2/convolution/ReadVariableOp2sequential_1/conv2d_1_2/convolution/ReadVariableOp2`
.sequential_1/conv2d_2_1/Reshape/ReadVariableOp.sequential_1/conv2d_2_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_2_1/convolution/ReadVariableOp2sequential_1/conv2d_2_1/convolution/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2T
(sequential_1/dense_1/Cast/ReadVariableOp(sequential_1/dense_1/Cast/ReadVariableOp2^
-sequential_1/dense_1_2/BiasAdd/ReadVariableOp-sequential_1/dense_1_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1_2/Cast/ReadVariableOp*sequential_1/dense_1_2/Cast/ReadVariableOp2^
-sequential_1/dense_2_1/BiasAdd/ReadVariableOp-sequential_1/dense_2_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2_1/Cast/ReadVariableOp*sequential_1/dense_2_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
"__inference_serving_default_422280

inputsV
<functional_14_1_conv2d_1_convolution_readvariableop_resource:@F
8functional_14_1_conv2d_1_reshape_readvariableop_resource:@P
Bfunctional_14_1_batch_normalization_1_cast_readvariableop_resource:@R
Dfunctional_14_1_batch_normalization_1_cast_1_readvariableop_resource:@R
Dfunctional_14_1_batch_normalization_1_cast_2_readvariableop_resource:@R
Dfunctional_14_1_batch_normalization_1_cast_3_readvariableop_resource:@X
>functional_14_1_conv2d_1_2_convolution_readvariableop_resource:@ H
:functional_14_1_conv2d_1_2_reshape_readvariableop_resource: R
Dfunctional_14_1_batch_normalization_1_2_cast_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_1_2_cast_1_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_1_2_cast_2_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_1_2_cast_3_readvariableop_resource: X
>functional_14_1_conv2d_2_1_convolution_readvariableop_resource:  H
:functional_14_1_conv2d_2_1_reshape_readvariableop_resource: R
Dfunctional_14_1_batch_normalization_2_1_cast_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_2_1_cast_1_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_2_1_cast_2_readvariableop_resource: T
Ffunctional_14_1_batch_normalization_2_1_cast_3_readvariableop_resource: H
4functional_14_1_dense_1_cast_readvariableop_resource:
�Q�F
7functional_14_1_dense_1_biasadd_readvariableop_resource:	�I
6functional_14_1_dense_1_2_cast_readvariableop_resource:	�@G
9functional_14_1_dense_1_2_biasadd_readvariableop_resource:@H
6functional_14_1_dense_2_1_cast_readvariableop_resource:@G
9functional_14_1_dense_2_1_biasadd_readvariableop_resource:
identity��9functional_14_1/batch_normalization_1/Cast/ReadVariableOp�;functional_14_1/batch_normalization_1/Cast_1/ReadVariableOp�;functional_14_1/batch_normalization_1/Cast_2/ReadVariableOp�;functional_14_1/batch_normalization_1/Cast_3/ReadVariableOp�;functional_14_1/batch_normalization_1_2/Cast/ReadVariableOp�=functional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOp�=functional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOp�=functional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOp�;functional_14_1/batch_normalization_2_1/Cast/ReadVariableOp�=functional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOp�=functional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOp�=functional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOp�/functional_14_1/conv2d_1/Reshape/ReadVariableOp�3functional_14_1/conv2d_1/convolution/ReadVariableOp�1functional_14_1/conv2d_1_2/Reshape/ReadVariableOp�5functional_14_1/conv2d_1_2/convolution/ReadVariableOp�1functional_14_1/conv2d_2_1/Reshape/ReadVariableOp�5functional_14_1/conv2d_2_1/convolution/ReadVariableOp�.functional_14_1/dense_1/BiasAdd/ReadVariableOp�+functional_14_1/dense_1/Cast/ReadVariableOp�0functional_14_1/dense_1_2/BiasAdd/ReadVariableOp�-functional_14_1/dense_1_2/Cast/ReadVariableOp�0functional_14_1/dense_2_1/BiasAdd/ReadVariableOp�-functional_14_1/dense_2_1/Cast/ReadVariableOp�
3functional_14_1/conv2d_1/convolution/ReadVariableOpReadVariableOp<functional_14_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
:@*
dtype0�
$functional_14_1/conv2d_1/convolutionConv2Dinputs;functional_14_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
/functional_14_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp8functional_14_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0
&functional_14_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
 functional_14_1/conv2d_1/ReshapeReshape7functional_14_1/conv2d_1/Reshape/ReadVariableOp:value:0/functional_14_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@{
 functional_14_1/conv2d_1/SqueezeSqueeze)functional_14_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
:@�
 functional_14_1/conv2d_1/BiasAddBiasAdd-functional_14_1/conv2d_1/convolution:output:0)functional_14_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:�����������@�
functional_14_1/conv2d_1/ReluRelu)functional_14_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
9functional_14_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOpBfunctional_14_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
;functional_14_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpDfunctional_14_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
;functional_14_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpDfunctional_14_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
;functional_14_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpDfunctional_14_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0z
5functional_14_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3functional_14_1/batch_normalization_1/batchnorm/addAddV2Cfunctional_14_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0>functional_14_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
5functional_14_1/batch_normalization_1/batchnorm/RsqrtRsqrt7functional_14_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
3functional_14_1/batch_normalization_1/batchnorm/mulMul9functional_14_1/batch_normalization_1/batchnorm/Rsqrt:y:0Cfunctional_14_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
5functional_14_1/batch_normalization_1/batchnorm/mul_1Mul+functional_14_1/conv2d_1/Relu:activations:07functional_14_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:�����������@�
5functional_14_1/batch_normalization_1/batchnorm/mul_2MulAfunctional_14_1/batch_normalization_1/Cast/ReadVariableOp:value:07functional_14_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
3functional_14_1/batch_normalization_1/batchnorm/subSubCfunctional_14_1/batch_normalization_1/Cast_3/ReadVariableOp:value:09functional_14_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
5functional_14_1/batch_normalization_1/batchnorm/add_1AddV29functional_14_1/batch_normalization_1/batchnorm/mul_1:z:07functional_14_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:�����������@�
)functional_14_1/max_pooling2d_1/MaxPool2dMaxPool9functional_14_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
�
5functional_14_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp>functional_14_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
&functional_14_1/conv2d_1_2/convolutionConv2D2functional_14_1/max_pooling2d_1/MaxPool2d:output:0=functional_14_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK *
paddingSAME*
strides
�
1functional_14_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp:functional_14_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
(functional_14_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
"functional_14_1/conv2d_1_2/ReshapeReshape9functional_14_1/conv2d_1_2/Reshape/ReadVariableOp:value:01functional_14_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
: 
"functional_14_1/conv2d_1_2/SqueezeSqueeze+functional_14_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
: �
"functional_14_1/conv2d_1_2/BiasAddBiasAdd/functional_14_1/conv2d_1_2/convolution:output:0+functional_14_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������KK �
functional_14_1/conv2d_1_2/ReluRelu+functional_14_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK �
;functional_14_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpDfunctional_14_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0|
7functional_14_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_14_1/batch_normalization_1_2/batchnorm/addAddV2Efunctional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0@functional_14_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt9functional_14_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
: �
5functional_14_1/batch_normalization_1_2/batchnorm/mulMul;functional_14_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Efunctional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_1_2/batchnorm/mul_1Mul-functional_14_1/conv2d_1_2/Relu:activations:09functional_14_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������KK �
7functional_14_1/batch_normalization_1_2/batchnorm/mul_2MulCfunctional_14_1/batch_normalization_1_2/Cast/ReadVariableOp:value:09functional_14_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
: �
5functional_14_1/batch_normalization_1_2/batchnorm/subSubEfunctional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:0;functional_14_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_1_2/batchnorm/add_1AddV2;functional_14_1/batch_normalization_1_2/batchnorm/mul_1:z:09functional_14_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������KK �
+functional_14_1/max_pooling2d_1_2/MaxPool2dMaxPool;functional_14_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������%% *
ksize
*
paddingVALID*
strides
�
5functional_14_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp>functional_14_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
:  *
dtype0�
&functional_14_1/conv2d_2_1/convolutionConv2D4functional_14_1/max_pooling2d_1_2/MaxPool2d:output:0=functional_14_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%% *
paddingSAME*
strides
�
1functional_14_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp:functional_14_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
(functional_14_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
"functional_14_1/conv2d_2_1/ReshapeReshape9functional_14_1/conv2d_2_1/Reshape/ReadVariableOp:value:01functional_14_1/conv2d_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: 
"functional_14_1/conv2d_2_1/SqueezeSqueeze+functional_14_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes
: �
"functional_14_1/conv2d_2_1/BiasAddBiasAdd/functional_14_1/conv2d_2_1/convolution:output:0+functional_14_1/conv2d_2_1/Squeeze:output:0*
T0*/
_output_shapes
:���������%% �
functional_14_1/conv2d_2_1/ReluRelu+functional_14_1/conv2d_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������%% �
;functional_14_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpDfunctional_14_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpFfunctional_14_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0|
7functional_14_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_14_1/batch_normalization_2_1/batchnorm/addAddV2Efunctional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0@functional_14_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt9functional_14_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
5functional_14_1/batch_normalization_2_1/batchnorm/mulMul;functional_14_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Efunctional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_2_1/batchnorm/mul_1Mul-functional_14_1/conv2d_2_1/Relu:activations:09functional_14_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������%% �
7functional_14_1/batch_normalization_2_1/batchnorm/mul_2MulCfunctional_14_1/batch_normalization_2_1/Cast/ReadVariableOp:value:09functional_14_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
5functional_14_1/batch_normalization_2_1/batchnorm/subSubEfunctional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0;functional_14_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
7functional_14_1/batch_normalization_2_1/batchnorm/add_1AddV2;functional_14_1/batch_normalization_2_1/batchnorm/mul_1:z:09functional_14_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������%% �
+functional_14_1/max_pooling2d_2_1/MaxPool2dMaxPool;functional_14_1/batch_normalization_2_1/batchnorm/add_1:z:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
x
'functional_14_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����(  �
!functional_14_1/flatten_1/ReshapeReshape4functional_14_1/max_pooling2d_2_1/MaxPool2d:output:00functional_14_1/flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:����������Q�
+functional_14_1/dense_1/Cast/ReadVariableOpReadVariableOp4functional_14_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype0�
functional_14_1/dense_1/MatMulMatMul*functional_14_1/flatten_1/Reshape:output:03functional_14_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.functional_14_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7functional_14_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_14_1/dense_1/BiasAddBiasAdd(functional_14_1/dense_1/MatMul:product:06functional_14_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_14_1/dense_1/ReluRelu(functional_14_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-functional_14_1/dense_1_2/Cast/ReadVariableOpReadVariableOp6functional_14_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
 functional_14_1/dense_1_2/MatMulMatMul*functional_14_1/dense_1/Relu:activations:05functional_14_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0functional_14_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp9functional_14_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!functional_14_1/dense_1_2/BiasAddBiasAdd*functional_14_1/dense_1_2/MatMul:product:08functional_14_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
functional_14_1/dense_1_2/ReluRelu*functional_14_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
-functional_14_1/dense_2_1/Cast/ReadVariableOpReadVariableOp6functional_14_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
 functional_14_1/dense_2_1/MatMulMatMul,functional_14_1/dense_1_2/Relu:activations:05functional_14_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0functional_14_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOp9functional_14_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!functional_14_1/dense_2_1/BiasAddBiasAdd*functional_14_1/dense_2_1/MatMul:product:08functional_14_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!functional_14_1/dense_2_1/SoftmaxSoftmax*functional_14_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+functional_14_1/dense_2_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp:^functional_14_1/batch_normalization_1/Cast/ReadVariableOp<^functional_14_1/batch_normalization_1/Cast_1/ReadVariableOp<^functional_14_1/batch_normalization_1/Cast_2/ReadVariableOp<^functional_14_1/batch_normalization_1/Cast_3/ReadVariableOp<^functional_14_1/batch_normalization_1_2/Cast/ReadVariableOp>^functional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOp>^functional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOp>^functional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOp<^functional_14_1/batch_normalization_2_1/Cast/ReadVariableOp>^functional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOp>^functional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOp>^functional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOp0^functional_14_1/conv2d_1/Reshape/ReadVariableOp4^functional_14_1/conv2d_1/convolution/ReadVariableOp2^functional_14_1/conv2d_1_2/Reshape/ReadVariableOp6^functional_14_1/conv2d_1_2/convolution/ReadVariableOp2^functional_14_1/conv2d_2_1/Reshape/ReadVariableOp6^functional_14_1/conv2d_2_1/convolution/ReadVariableOp/^functional_14_1/dense_1/BiasAdd/ReadVariableOp,^functional_14_1/dense_1/Cast/ReadVariableOp1^functional_14_1/dense_1_2/BiasAdd/ReadVariableOp.^functional_14_1/dense_1_2/Cast/ReadVariableOp1^functional_14_1/dense_2_1/BiasAdd/ReadVariableOp.^functional_14_1/dense_2_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 2v
9functional_14_1/batch_normalization_1/Cast/ReadVariableOp9functional_14_1/batch_normalization_1/Cast/ReadVariableOp2z
;functional_14_1/batch_normalization_1/Cast_1/ReadVariableOp;functional_14_1/batch_normalization_1/Cast_1/ReadVariableOp2z
;functional_14_1/batch_normalization_1/Cast_2/ReadVariableOp;functional_14_1/batch_normalization_1/Cast_2/ReadVariableOp2z
;functional_14_1/batch_normalization_1/Cast_3/ReadVariableOp;functional_14_1/batch_normalization_1/Cast_3/ReadVariableOp2z
;functional_14_1/batch_normalization_1_2/Cast/ReadVariableOp;functional_14_1/batch_normalization_1_2/Cast/ReadVariableOp2~
=functional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOp=functional_14_1/batch_normalization_1_2/Cast_1/ReadVariableOp2~
=functional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOp=functional_14_1/batch_normalization_1_2/Cast_2/ReadVariableOp2~
=functional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOp=functional_14_1/batch_normalization_1_2/Cast_3/ReadVariableOp2z
;functional_14_1/batch_normalization_2_1/Cast/ReadVariableOp;functional_14_1/batch_normalization_2_1/Cast/ReadVariableOp2~
=functional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOp=functional_14_1/batch_normalization_2_1/Cast_1/ReadVariableOp2~
=functional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOp=functional_14_1/batch_normalization_2_1/Cast_2/ReadVariableOp2~
=functional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOp=functional_14_1/batch_normalization_2_1/Cast_3/ReadVariableOp2b
/functional_14_1/conv2d_1/Reshape/ReadVariableOp/functional_14_1/conv2d_1/Reshape/ReadVariableOp2j
3functional_14_1/conv2d_1/convolution/ReadVariableOp3functional_14_1/conv2d_1/convolution/ReadVariableOp2f
1functional_14_1/conv2d_1_2/Reshape/ReadVariableOp1functional_14_1/conv2d_1_2/Reshape/ReadVariableOp2n
5functional_14_1/conv2d_1_2/convolution/ReadVariableOp5functional_14_1/conv2d_1_2/convolution/ReadVariableOp2f
1functional_14_1/conv2d_2_1/Reshape/ReadVariableOp1functional_14_1/conv2d_2_1/Reshape/ReadVariableOp2n
5functional_14_1/conv2d_2_1/convolution/ReadVariableOp5functional_14_1/conv2d_2_1/convolution/ReadVariableOp2`
.functional_14_1/dense_1/BiasAdd/ReadVariableOp.functional_14_1/dense_1/BiasAdd/ReadVariableOp2Z
+functional_14_1/dense_1/Cast/ReadVariableOp+functional_14_1/dense_1/Cast/ReadVariableOp2d
0functional_14_1/dense_1_2/BiasAdd/ReadVariableOp0functional_14_1/dense_1_2/BiasAdd/ReadVariableOp2^
-functional_14_1/dense_1_2/Cast/ReadVariableOp-functional_14_1/dense_1_2/Cast/ReadVariableOp2d
0functional_14_1/dense_2_1/BiasAdd/ReadVariableOp0functional_14_1/dense_2_1/BiasAdd/ReadVariableOp2^
-functional_14_1/dense_2_1/Cast/ReadVariableOp-functional_14_1/dense_2_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�4
__inference__traced_save_422922
file_prefix,
"read_disablecopyonread_variable_61:	 .
$read_1_disablecopyonread_variable_60: >
$read_2_disablecopyonread_variable_59:@>
$read_3_disablecopyonread_variable_58:@2
$read_4_disablecopyonread_variable_57:@2
$read_5_disablecopyonread_variable_56:@2
$read_6_disablecopyonread_variable_55:@2
$read_7_disablecopyonread_variable_54:@2
$read_8_disablecopyonread_variable_53:@2
$read_9_disablecopyonread_variable_52:@?
%read_10_disablecopyonread_variable_51:@ ?
%read_11_disablecopyonread_variable_50:@ 3
%read_12_disablecopyonread_variable_49: 3
%read_13_disablecopyonread_variable_48: 3
%read_14_disablecopyonread_variable_47: 3
%read_15_disablecopyonread_variable_46: 3
%read_16_disablecopyonread_variable_45: 3
%read_17_disablecopyonread_variable_44: ?
%read_18_disablecopyonread_variable_43:  ?
%read_19_disablecopyonread_variable_42:  3
%read_20_disablecopyonread_variable_41: 3
%read_21_disablecopyonread_variable_40: 3
%read_22_disablecopyonread_variable_39: 3
%read_23_disablecopyonread_variable_38: 3
%read_24_disablecopyonread_variable_37: 3
%read_25_disablecopyonread_variable_36: 9
%read_26_disablecopyonread_variable_35:
�Q�9
%read_27_disablecopyonread_variable_34:
�Q�4
%read_28_disablecopyonread_variable_33:	�4
%read_29_disablecopyonread_variable_32:	�8
%read_30_disablecopyonread_variable_31:	�@8
%read_31_disablecopyonread_variable_30:	�@3
%read_32_disablecopyonread_variable_29:@3
%read_33_disablecopyonread_variable_28:@7
%read_34_disablecopyonread_variable_27:@7
%read_35_disablecopyonread_variable_26:@3
%read_36_disablecopyonread_variable_25:3
%read_37_disablecopyonread_variable_24:?
%read_38_disablecopyonread_variable_23:@3
%read_39_disablecopyonread_variable_22:@3
%read_40_disablecopyonread_variable_21:@3
%read_41_disablecopyonread_variable_20:@?
%read_42_disablecopyonread_variable_19:@ 3
%read_43_disablecopyonread_variable_18: 3
%read_44_disablecopyonread_variable_17: 3
%read_45_disablecopyonread_variable_16: ?
%read_46_disablecopyonread_variable_15:  3
%read_47_disablecopyonread_variable_14: 3
%read_48_disablecopyonread_variable_13: 3
%read_49_disablecopyonread_variable_12: 9
%read_50_disablecopyonread_variable_11:
�Q�4
%read_51_disablecopyonread_variable_10:	�7
$read_52_disablecopyonread_variable_9:	�@2
$read_53_disablecopyonread_variable_8:@6
$read_54_disablecopyonread_variable_7:@2
$read_55_disablecopyonread_variable_6:2
$read_56_disablecopyonread_variable_5:@2
$read_57_disablecopyonread_variable_4:@2
$read_58_disablecopyonread_variable_3: 2
$read_59_disablecopyonread_variable_2: 2
$read_60_disablecopyonread_variable_1: 0
"read_61_disablecopyonread_variable: 
savev2_const
identity_125��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_61*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_61^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_60*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_60^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_59*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_59^Read_2/DisableCopyOnRead*&
_output_shapes
:@*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
:@k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:@i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_58*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_58^Read_3/DisableCopyOnRead*&
_output_shapes
:@*
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:@k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:@i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_57*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_57^Read_4/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_56*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_56^Read_5/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_55*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_55^Read_6/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_54*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_54^Read_7/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_53*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_53^Read_8/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_52*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_52^Read_9/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_51*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_51^Read_10/DisableCopyOnRead*&
_output_shapes
:@ *
dtype0h
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_50*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_50^Read_11/DisableCopyOnRead*&
_output_shapes
:@ *
dtype0h
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_49*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_49^Read_12/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_48*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_48^Read_13/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_47*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_47^Read_14/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_46*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_46^Read_15/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_45*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_45^Read_16/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_44*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_44^Read_17/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_43*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_43^Read_18/DisableCopyOnRead*&
_output_shapes
:  *
dtype0h
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*&
_output_shapes
:  m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:  k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_42*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_42^Read_19/DisableCopyOnRead*&
_output_shapes
:  *
dtype0h
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*&
_output_shapes
:  m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:  k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_41*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_41^Read_20/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_40*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_40^Read_21/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_39*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_39^Read_22/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_38*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_38^Read_23/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_37*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_37^Read_24/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_36*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_36^Read_25/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_35*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_35^Read_26/DisableCopyOnRead* 
_output_shapes
:
�Q�*
dtype0b
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�g
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�Q�k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_34*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_34^Read_27/DisableCopyOnRead* 
_output_shapes
:
�Q�*
dtype0b
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�g
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�Q�k
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_variable_33*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_variable_33^Read_28/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_29/DisableCopyOnReadDisableCopyOnRead%read_29_disablecopyonread_variable_32*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp%read_29_disablecopyonread_variable_32^Read_29/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_30/DisableCopyOnReadDisableCopyOnRead%read_30_disablecopyonread_variable_31*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp%read_30_disablecopyonread_variable_31^Read_30/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_variable_30*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_variable_30^Read_31/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_32/DisableCopyOnReadDisableCopyOnRead%read_32_disablecopyonread_variable_29*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp%read_32_disablecopyonread_variable_29^Read_32/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_variable_28*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_variable_28^Read_33/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_34/DisableCopyOnReadDisableCopyOnRead%read_34_disablecopyonread_variable_27*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp%read_34_disablecopyonread_variable_27^Read_34/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_35/DisableCopyOnReadDisableCopyOnRead%read_35_disablecopyonread_variable_26*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp%read_35_disablecopyonread_variable_26^Read_35/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_36/DisableCopyOnReadDisableCopyOnRead%read_36_disablecopyonread_variable_25*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp%read_36_disablecopyonread_variable_25^Read_36/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_37/DisableCopyOnReadDisableCopyOnRead%read_37_disablecopyonread_variable_24*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp%read_37_disablecopyonread_variable_24^Read_37/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_38/DisableCopyOnReadDisableCopyOnRead%read_38_disablecopyonread_variable_23*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp%read_38_disablecopyonread_variable_23^Read_38/DisableCopyOnRead*&
_output_shapes
:@*
dtype0h
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*&
_output_shapes
:@m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:@k
Read_39/DisableCopyOnReadDisableCopyOnRead%read_39_disablecopyonread_variable_22*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp%read_39_disablecopyonread_variable_22^Read_39/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_40/DisableCopyOnReadDisableCopyOnRead%read_40_disablecopyonread_variable_21*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp%read_40_disablecopyonread_variable_21^Read_40/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_41/DisableCopyOnReadDisableCopyOnRead%read_41_disablecopyonread_variable_20*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp%read_41_disablecopyonread_variable_20^Read_41/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_42/DisableCopyOnReadDisableCopyOnRead%read_42_disablecopyonread_variable_19*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp%read_42_disablecopyonread_variable_19^Read_42/DisableCopyOnRead*&
_output_shapes
:@ *
dtype0h
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ m
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ k
Read_43/DisableCopyOnReadDisableCopyOnRead%read_43_disablecopyonread_variable_18*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp%read_43_disablecopyonread_variable_18^Read_43/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_44/DisableCopyOnReadDisableCopyOnRead%read_44_disablecopyonread_variable_17*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp%read_44_disablecopyonread_variable_17^Read_44/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_45/DisableCopyOnReadDisableCopyOnRead%read_45_disablecopyonread_variable_16*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp%read_45_disablecopyonread_variable_16^Read_45/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_46/DisableCopyOnReadDisableCopyOnRead%read_46_disablecopyonread_variable_15*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp%read_46_disablecopyonread_variable_15^Read_46/DisableCopyOnRead*&
_output_shapes
:  *
dtype0h
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0*&
_output_shapes
:  m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:  k
Read_47/DisableCopyOnReadDisableCopyOnRead%read_47_disablecopyonread_variable_14*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp%read_47_disablecopyonread_variable_14^Read_47/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_48/DisableCopyOnReadDisableCopyOnRead%read_48_disablecopyonread_variable_13*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp%read_48_disablecopyonread_variable_13^Read_48/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_49/DisableCopyOnReadDisableCopyOnRead%read_49_disablecopyonread_variable_12*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp%read_49_disablecopyonread_variable_12^Read_49/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_50/DisableCopyOnReadDisableCopyOnRead%read_50_disablecopyonread_variable_11*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp%read_50_disablecopyonread_variable_11^Read_50/DisableCopyOnRead* 
_output_shapes
:
�Q�*
dtype0c
Identity_100IdentityRead_50/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�i
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�Q�k
Read_51/DisableCopyOnReadDisableCopyOnRead%read_51_disablecopyonread_variable_10*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp%read_51_disablecopyonread_variable_10^Read_51/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_102IdentityRead_51/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_52/DisableCopyOnReadDisableCopyOnRead$read_52_disablecopyonread_variable_9*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp$read_52_disablecopyonread_variable_9^Read_52/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0b
Identity_104IdentityRead_52/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@h
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@j
Read_53/DisableCopyOnReadDisableCopyOnRead$read_53_disablecopyonread_variable_8*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp$read_53_disablecopyonread_variable_8^Read_53/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_106IdentityRead_53/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_54/DisableCopyOnReadDisableCopyOnRead$read_54_disablecopyonread_variable_7*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp$read_54_disablecopyonread_variable_7^Read_54/DisableCopyOnRead*
_output_shapes

:@*
dtype0a
Identity_108IdentityRead_54/ReadVariableOp:value:0*
T0*
_output_shapes

:@g
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes

:@j
Read_55/DisableCopyOnReadDisableCopyOnRead$read_55_disablecopyonread_variable_6*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp$read_55_disablecopyonread_variable_6^Read_55/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_110IdentityRead_55/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_56/DisableCopyOnReadDisableCopyOnRead$read_56_disablecopyonread_variable_5*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp$read_56_disablecopyonread_variable_5^Read_56/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_112IdentityRead_56/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_57/DisableCopyOnReadDisableCopyOnRead$read_57_disablecopyonread_variable_4*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp$read_57_disablecopyonread_variable_4^Read_57/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_114IdentityRead_57/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_58/DisableCopyOnReadDisableCopyOnRead$read_58_disablecopyonread_variable_3*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp$read_58_disablecopyonread_variable_3^Read_58/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_116IdentityRead_58/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_59/DisableCopyOnReadDisableCopyOnRead$read_59_disablecopyonread_variable_2*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp$read_59_disablecopyonread_variable_2^Read_59/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_118IdentityRead_59/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_60/DisableCopyOnReadDisableCopyOnRead$read_60_disablecopyonread_variable_1*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp$read_60_disablecopyonread_variable_1^Read_60/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_120IdentityRead_60/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_61/DisableCopyOnReadDisableCopyOnRead"read_61_disablecopyonread_variable*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp"read_61_disablecopyonread_variable^Read_61/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_122IdentityRead_61/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *M
dtypesC
A2?	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_124Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_125IdentityIdentity_124:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_125Identity_125:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=?9

_output_shapes
: 

_user_specified_nameConst:(>$
"
_user_specified_name
Variable:*=&
$
_user_specified_name
Variable_1:*<&
$
_user_specified_name
Variable_2:*;&
$
_user_specified_name
Variable_3:*:&
$
_user_specified_name
Variable_4:*9&
$
_user_specified_name
Variable_5:*8&
$
_user_specified_name
Variable_6:*7&
$
_user_specified_name
Variable_7:*6&
$
_user_specified_name
Variable_8:*5&
$
_user_specified_name
Variable_9:+4'
%
_user_specified_nameVariable_10:+3'
%
_user_specified_nameVariable_11:+2'
%
_user_specified_nameVariable_12:+1'
%
_user_specified_nameVariable_13:+0'
%
_user_specified_nameVariable_14:+/'
%
_user_specified_nameVariable_15:+.'
%
_user_specified_nameVariable_16:+-'
%
_user_specified_nameVariable_17:+,'
%
_user_specified_nameVariable_18:++'
%
_user_specified_nameVariable_19:+*'
%
_user_specified_nameVariable_20:+)'
%
_user_specified_nameVariable_21:+('
%
_user_specified_nameVariable_22:+''
%
_user_specified_nameVariable_23:+&'
%
_user_specified_nameVariable_24:+%'
%
_user_specified_nameVariable_25:+$'
%
_user_specified_nameVariable_26:+#'
%
_user_specified_nameVariable_27:+"'
%
_user_specified_nameVariable_28:+!'
%
_user_specified_nameVariable_29:+ '
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_50:+'
%
_user_specified_nameVariable_51:+
'
%
_user_specified_nameVariable_52:+	'
%
_user_specified_nameVariable_53:+'
%
_user_specified_nameVariable_54:+'
%
_user_specified_nameVariable_55:+'
%
_user_specified_nameVariable_56:+'
%
_user_specified_nameVariable_57:+'
%
_user_specified_nameVariable_58:+'
%
_user_specified_nameVariable_59:+'
%
_user_specified_nameVariable_60:+'
%
_user_specified_nameVariable_61:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�"
"__inference__traced_restore_423117
file_prefix&
assignvariableop_variable_61:	 (
assignvariableop_1_variable_60: 8
assignvariableop_2_variable_59:@8
assignvariableop_3_variable_58:@,
assignvariableop_4_variable_57:@,
assignvariableop_5_variable_56:@,
assignvariableop_6_variable_55:@,
assignvariableop_7_variable_54:@,
assignvariableop_8_variable_53:@,
assignvariableop_9_variable_52:@9
assignvariableop_10_variable_51:@ 9
assignvariableop_11_variable_50:@ -
assignvariableop_12_variable_49: -
assignvariableop_13_variable_48: -
assignvariableop_14_variable_47: -
assignvariableop_15_variable_46: -
assignvariableop_16_variable_45: -
assignvariableop_17_variable_44: 9
assignvariableop_18_variable_43:  9
assignvariableop_19_variable_42:  -
assignvariableop_20_variable_41: -
assignvariableop_21_variable_40: -
assignvariableop_22_variable_39: -
assignvariableop_23_variable_38: -
assignvariableop_24_variable_37: -
assignvariableop_25_variable_36: 3
assignvariableop_26_variable_35:
�Q�3
assignvariableop_27_variable_34:
�Q�.
assignvariableop_28_variable_33:	�.
assignvariableop_29_variable_32:	�2
assignvariableop_30_variable_31:	�@2
assignvariableop_31_variable_30:	�@-
assignvariableop_32_variable_29:@-
assignvariableop_33_variable_28:@1
assignvariableop_34_variable_27:@1
assignvariableop_35_variable_26:@-
assignvariableop_36_variable_25:-
assignvariableop_37_variable_24:9
assignvariableop_38_variable_23:@-
assignvariableop_39_variable_22:@-
assignvariableop_40_variable_21:@-
assignvariableop_41_variable_20:@9
assignvariableop_42_variable_19:@ -
assignvariableop_43_variable_18: -
assignvariableop_44_variable_17: -
assignvariableop_45_variable_16: 9
assignvariableop_46_variable_15:  -
assignvariableop_47_variable_14: -
assignvariableop_48_variable_13: -
assignvariableop_49_variable_12: 3
assignvariableop_50_variable_11:
�Q�.
assignvariableop_51_variable_10:	�1
assignvariableop_52_variable_9:	�@,
assignvariableop_53_variable_8:@0
assignvariableop_54_variable_7:@,
assignvariableop_55_variable_6:,
assignvariableop_56_variable_5:@,
assignvariableop_57_variable_4:@,
assignvariableop_58_variable_3: ,
assignvariableop_59_variable_2: ,
assignvariableop_60_variable_1: *
assignvariableop_61_variable: 
identity_63��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*M
dtypesC
A2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_61Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_60Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_59Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_58Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_57Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_56Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_55Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_54Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_53Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_52Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_51Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_50Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_49Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_48Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_47Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_46Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_45Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_44Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_43Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_42Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_41Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_40Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_39Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_38Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_37Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_36Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_35Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_34Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_33Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_32Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_31Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_30Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_29Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_28Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_27Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_26Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_25Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variable_24Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_23Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_variable_22Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_variable_21Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_variable_20Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_variable_19Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_variable_18Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_variable_17Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_variable_16Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_variable_15Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_variable_14Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_variable_13Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_variable_12Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_variable_11Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_variable_10Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_variable_9Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_variable_8Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_variable_7Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_variable_6Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_variable_5Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_variable_4Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpassignvariableop_58_variable_3Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpassignvariableop_59_variable_2Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpassignvariableop_60_variable_1Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpassignvariableop_61_variableIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_62Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_63IdentityIdentity_62:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_63Identity_63:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
~: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:(>$
"
_user_specified_name
Variable:*=&
$
_user_specified_name
Variable_1:*<&
$
_user_specified_name
Variable_2:*;&
$
_user_specified_name
Variable_3:*:&
$
_user_specified_name
Variable_4:*9&
$
_user_specified_name
Variable_5:*8&
$
_user_specified_name
Variable_6:*7&
$
_user_specified_name
Variable_7:*6&
$
_user_specified_name
Variable_8:*5&
$
_user_specified_name
Variable_9:+4'
%
_user_specified_nameVariable_10:+3'
%
_user_specified_nameVariable_11:+2'
%
_user_specified_nameVariable_12:+1'
%
_user_specified_nameVariable_13:+0'
%
_user_specified_nameVariable_14:+/'
%
_user_specified_nameVariable_15:+.'
%
_user_specified_nameVariable_16:+-'
%
_user_specified_nameVariable_17:+,'
%
_user_specified_nameVariable_18:++'
%
_user_specified_nameVariable_19:+*'
%
_user_specified_nameVariable_20:+)'
%
_user_specified_nameVariable_21:+('
%
_user_specified_nameVariable_22:+''
%
_user_specified_nameVariable_23:+&'
%
_user_specified_nameVariable_24:+%'
%
_user_specified_nameVariable_25:+$'
%
_user_specified_nameVariable_26:+#'
%
_user_specified_nameVariable_27:+"'
%
_user_specified_nameVariable_28:+!'
%
_user_specified_nameVariable_29:+ '
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_50:+'
%
_user_specified_nameVariable_51:+
'
%
_user_specified_nameVariable_52:+	'
%
_user_specified_nameVariable_53:+'
%
_user_specified_nameVariable_54:+'
%
_user_specified_nameVariable_55:+'
%
_user_specified_nameVariable_56:+'
%
_user_specified_nameVariable_57:+'
%
_user_specified_nameVariable_58:+'
%
_user_specified_nameVariable_59:+'
%
_user_specified_nameVariable_60:+'
%
_user_specified_nameVariable_61:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
4__inference_signature_wrapper_serving_default_422172

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�@

unknown_20:@

unknown_21:@

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *+
f&R$
"__inference_serving_default_422118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name422168:&"
 
_user_specified_name422166:&"
 
_user_specified_name422164:&"
 
_user_specified_name422162:&"
 
_user_specified_name422160:&"
 
_user_specified_name422158:&"
 
_user_specified_name422156:&"
 
_user_specified_name422154:&"
 
_user_specified_name422152:&"
 
_user_specified_name422150:&"
 
_user_specified_name422148:&"
 
_user_specified_name422146:&"
 
_user_specified_name422144:&"
 
_user_specified_name422142:&
"
 
_user_specified_name422140:&	"
 
_user_specified_name422138:&"
 
_user_specified_name422136:&"
 
_user_specified_name422134:&"
 
_user_specified_name422132:&"
 
_user_specified_name422130:&"
 
_user_specified_name422128:&"
 
_user_specified_name422126:&"
 
_user_specified_name422124:&"
 
_user_specified_name422122:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�f
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
"__inference_serving_default_422118�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
.serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15"
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
/trace_02�
"__inference_serving_default_422280�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������z/trace_0
�
0
1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
F24
G25
H26
I27
J28
K29
L30
M31
N32
O33
P34
Q35
R36
S37"
trackable_list_wrapper
�
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15
d16
e17"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 (2adam/iteration
: (2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
"__inference_serving_default_422118inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
y
f_inbound_nodes
g_outbound_nodes
h_losses
i	_loss_ids
j_losses_override"
_generic_user_object
�
T_kernel
Ubias
k_inbound_nodes
l_outbound_nodes
m_losses
n	_loss_ids
o_losses_override
p_build_shapes_dict"
_generic_user_object
�
	Vgamma
Wbeta
qmoving_mean
rmoving_variance
s_inbound_nodes
t_outbound_nodes
u_losses
v	_loss_ids
w_losses_override
x_reduction_axes
y_build_shapes_dict"
_generic_user_object
y
z_inbound_nodes
{_outbound_nodes
|_losses
}	_loss_ids
~_losses_override"
_generic_user_object
�
X_kernel
Ybias
_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
	Zgamma
[beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
\_kernel
]bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
	^gamma
_beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
`_kernel
abias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
b_kernel
cbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
d_kernel
ebias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�B�
4__inference_signature_wrapper_serving_default_422172inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
"__inference_serving_default_422280inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
>:<@2&adam/sequential_conv2d_kernel_momentum
>:<@2&adam/sequential_conv2d_kernel_velocity
0:.@2$adam/sequential_conv2d_bias_momentum
0:.@2$adam/sequential_conv2d_bias_velocity
>:<@22adam/sequential_batch_normalization_gamma_momentum
>:<@22adam/sequential_batch_normalization_gamma_velocity
=:;@21adam/sequential_batch_normalization_beta_momentum
=:;@21adam/sequential_batch_normalization_beta_velocity
@:>@ 2(adam/sequential_conv2d_1_kernel_momentum
@:>@ 2(adam/sequential_conv2d_1_kernel_velocity
2:0 2&adam/sequential_conv2d_1_bias_momentum
2:0 2&adam/sequential_conv2d_1_bias_velocity
@:> 24adam/sequential_batch_normalization_1_gamma_momentum
@:> 24adam/sequential_batch_normalization_1_gamma_velocity
?:= 23adam/sequential_batch_normalization_1_beta_momentum
?:= 23adam/sequential_batch_normalization_1_beta_velocity
@:>  2(adam/sequential_conv2d_2_kernel_momentum
@:>  2(adam/sequential_conv2d_2_kernel_velocity
2:0 2&adam/sequential_conv2d_2_bias_momentum
2:0 2&adam/sequential_conv2d_2_bias_velocity
@:> 24adam/sequential_batch_normalization_2_gamma_momentum
@:> 24adam/sequential_batch_normalization_2_gamma_velocity
?:= 23adam/sequential_batch_normalization_2_beta_momentum
?:= 23adam/sequential_batch_normalization_2_beta_velocity
7:5
�Q�2%adam/sequential_dense_kernel_momentum
7:5
�Q�2%adam/sequential_dense_kernel_velocity
0:.�2#adam/sequential_dense_bias_momentum
0:.�2#adam/sequential_dense_bias_velocity
8:6	�@2'adam/sequential_dense_1_kernel_momentum
8:6	�@2'adam/sequential_dense_1_kernel_velocity
1:/@2%adam/sequential_dense_1_bias_momentum
1:/@2%adam/sequential_dense_1_bias_velocity
7:5@2'adam/sequential_dense_2_kernel_momentum
7:5@2'adam/sequential_dense_2_kernel_velocity
1:/2%adam/sequential_dense_2_bias_momentum
1:/2%adam/sequential_dense_2_bias_velocity
2:0@2sequential/conv2d/kernel
$:"@2sequential/conv2d/bias
2:0@2$sequential/batch_normalization/gamma
1:/@2#sequential/batch_normalization/beta
4:2@ 2sequential/conv2d_1/kernel
&:$ 2sequential/conv2d_1/bias
4:2 2&sequential/batch_normalization_1/gamma
3:1 2%sequential/batch_normalization_1/beta
4:2  2sequential/conv2d_2/kernel
&:$ 2sequential/conv2d_2/bias
4:2 2&sequential/batch_normalization_2/gamma
3:1 2%sequential/batch_normalization_2/beta
+:)
�Q�2sequential/dense/kernel
$:"�2sequential/dense/bias
,:*	�@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
+:)@2sequential/dense_2/kernel
%:#2sequential/dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
6:4@2*sequential/batch_normalization/moving_mean
::8@2.sequential/batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
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
8:6 2,sequential/batch_normalization_1/moving_mean
<:: 20sequential/batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
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
8:6 2,sequential/batch_normalization_2/moving_mean
<:: 20sequential/batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
"__inference_serving_default_422118|TUqrVWXY��Z[\]��^_`abcde9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
"__inference_serving_default_422280|TUqrVWXY��Z[\]��^_`abcde9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
4__inference_signature_wrapper_serving_default_422172�TUqrVWXY��Z[\]��^_`abcdeC�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������