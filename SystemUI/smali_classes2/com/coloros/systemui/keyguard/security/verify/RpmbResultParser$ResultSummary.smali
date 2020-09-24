.class Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultSummary"
.end annotation


# instance fields
.field private mIsExeSuccess:Z

.field private mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field private mParamsNum:I

.field private mResultParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;",
            "Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mIsExeSuccess:Z

    .line 168
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mParamsNum:I

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mResultParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addResultParam(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getMethodParamType()Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mResultParamMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getMethodParamType()Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getMethodType()Lcom/coloros/systemui/keyguard/security/verify/MethodType;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-object p0
.end method

.method getParamsNum()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mParamsNum:I

    return p0
.end method

.method getResultParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;
    .locals 0

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mResultParamMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getResultParamMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;",
            "Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mResultParamMap:Ljava/util/HashMap;

    return-object p0
.end method

.method isExeSuccess()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mIsExeSuccess:Z

    return p0
.end method

.method setIsExeSuccess(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mIsExeSuccess:Z

    return-void
.end method

.method setMethodType(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-void
.end method

.method setParamsNum(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->mParamsNum:I

    return-void
.end method
