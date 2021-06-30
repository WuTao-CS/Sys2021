#ifndef _RETURNVAL_H__
#define _RETURNVAL_H__

#include <cstdlib>

enum RETURN_VAL {
    _False_assertValid_BinaryInst,
    _False_assertValid_CmpInst,
    _ArgsNotMatch_Constructor_CallInst,
    _NotCondBr_fuseCmpInst_BranchInst,
    _cmpUsedMoreThanOnce_fuseCmpInst_BranchInst,
    _ElementIsArrayOrInterger_getElementType_GetElementPtrInst,
    _IndexError_getElementType_GetElementPtrInst,
    _LoadFromErrorType_Constructor_LodInst,
    _ElemIsNotTargetType_Constructor_LodInst,
    _InvalidRetVal_Constructor_FunctionType,
    _InvalidArgType_Constructor_FunctionType,
    _InvalidElemType_Constructor_ArrayType,
    _OutOfIndex_setOperand_User,
    _CantFindUse_removeUse_Value,
    _GenPhi_Mem2RegPass,
    _getFunction_Function,
    _getArgNo_Argument,

    _ABORT_MANAL = 255,
};

static void exit_ifnot(RETURN_VAL ret, bool cond)
{
    if (cond == false)
        exit(ret);
}

#endif