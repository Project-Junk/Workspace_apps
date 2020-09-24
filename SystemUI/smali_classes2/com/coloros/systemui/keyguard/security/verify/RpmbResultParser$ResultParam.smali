.class Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultParam"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mBufferLen:I

.field private mMethodParamType:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mMethodParamType:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v1, 0x0

    .line 215
    iput v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBufferLen:I

    .line 216
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBuffer:[B

    return-void
.end method


# virtual methods
.method getBuffer()[B
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBuffer:[B

    return-object p0
.end method

.method getBufferLen()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBufferLen:I

    return p0
.end method

.method getMethodParamType()Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mMethodParamType:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    return-object p0
.end method

.method setBuffer([B)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBuffer:[B

    return-void
.end method

.method setBufferLen(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mBufferLen:I

    return-void
.end method

.method setMethodParamType(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->mMethodParamType:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    return-void
.end method
