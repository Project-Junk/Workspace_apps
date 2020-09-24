.class public final enum Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;
.super Ljava/lang/Enum;
.source "MethodParamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_COMMON_BUFFER0_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_COMMON_BUFFER1_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_COMMON_BUFFER2_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_COMMON_BUFFER3_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_ENC_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_HANDLER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_HIDE_EMAIL_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_INFO_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_PWD_INFO_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_PWD_LOCK_TIME_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_PWD_RETRY_COUNT_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_PWD_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_SECURE_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_VERIFY_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_VERIFY_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

.field public static final enum PMS_VERSION_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v1, 0x0

    const-string v2, "PMS_VERSION_T"

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERSION_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 19
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v2, 0x1

    const-string v3, "PMS_TYPE_T"

    const/16 v4, 0xc9

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 20
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v3, 0x2

    const-string v4, "PMS_PWD_INFO_T"

    const/16 v5, 0xca

    invoke-direct {v0, v4, v3, v5}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_INFO_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 21
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v4, 0x3

    const-string v5, "PMS_SECURE_INFO_BUFFER_T"

    const/16 v6, 0xcb

    invoke-direct {v0, v5, v4, v6}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_SECURE_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 22
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v5, 0x4

    const-string v6, "PMS_VERIFY_TYPE_T"

    const/16 v7, 0xcc

    invoke-direct {v0, v6, v5, v7}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 23
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v6, 0x5

    const-string v7, "PMS_VERIFY_BUFFER_T"

    const/16 v8, 0xcd

    invoke-direct {v0, v7, v6, v8}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 24
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v7, 0x6

    const-string v8, "PMS_CHALLENGE_T"

    const/16 v9, 0xce

    invoke-direct {v0, v8, v7, v9}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 25
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v8, 0x7

    const-string v9, "PMS_INFO_TYPE_T"

    const/16 v10, 0xcf

    invoke-direct {v0, v9, v8, v10}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 26
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v9, 0x8

    const-string v10, "PMS_INFO_BUFFER_T"

    const/16 v11, 0xd0

    invoke-direct {v0, v10, v9, v11}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 27
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v10, 0x9

    const-string v11, "PMS_HANDLER_T"

    const/16 v12, 0xd1

    invoke-direct {v0, v11, v10, v12}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_HANDLER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 28
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v11, 0xa

    const-string v12, "PMS_PWD_TYPE_T"

    const/16 v13, 0xd2

    invoke-direct {v0, v12, v11, v13}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 29
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v12, 0xb

    const-string v13, "PMS_PWD_RETRY_COUNT_LEFT_T"

    const/16 v14, 0xd3

    invoke-direct {v0, v13, v12, v14}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_RETRY_COUNT_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 30
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v13, 0xc

    const-string v14, "PMS_PWD_LOCK_TIME_LEFT_T"

    const/16 v15, 0xd4

    invoke-direct {v0, v14, v13, v15}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_LOCK_TIME_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 31
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v14, 0xd

    const-string v15, "PMS_COMMON_BUFFER0_T"

    const/16 v13, 0xd5

    invoke-direct {v0, v15, v14, v13}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER0_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 32
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v13, 0xe

    const-string v15, "PMS_COMMON_BUFFER1_T"

    const/16 v14, 0xd6

    invoke-direct {v0, v15, v13, v14}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER1_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 33
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const-string v14, "PMS_COMMON_BUFFER2_T"

    const/16 v15, 0xf

    const/16 v13, 0xd7

    invoke-direct {v0, v14, v15, v13}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER2_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 34
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const-string v13, "PMS_COMMON_BUFFER3_T"

    const/16 v14, 0x10

    const/16 v15, 0xd8

    invoke-direct {v0, v13, v14, v15}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER3_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 35
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const-string v13, "PMS_HIDE_EMAIL_T"

    const/16 v14, 0x11

    const/16 v15, 0xd9

    invoke-direct {v0, v13, v14, v15}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_HIDE_EMAIL_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 36
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const-string v13, "PMS_ENC_BUFFER_T"

    const/16 v14, 0x12

    const/16 v15, 0xda

    invoke-direct {v0, v13, v14, v15}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_ENC_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v0, 0x13

    .line 16
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    sget-object v13, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERSION_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_INFO_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_SECURE_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_HANDLER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_RETRY_COUNT_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_LOCK_TIME_LEFT_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER0_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER1_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER2_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_COMMON_BUFFER3_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_HIDE_EMAIL_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_ENC_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->$VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->mCode:I

    return-void
.end method

.method public static get(I)Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;
    .locals 5

    .line 45
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->values()[Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;
    .locals 1

    .line 16
    const-class v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;
    .locals 1

    .line 16
    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->$VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->mCode:I

    return p0
.end method
