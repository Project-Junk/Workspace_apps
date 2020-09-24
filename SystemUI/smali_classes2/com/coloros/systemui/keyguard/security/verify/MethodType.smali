.class public final enum Lcom/coloros/systemui/keyguard/security/verify/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/security/verify/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_DELETE:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_ENROLL:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_FIRST_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_GET_INFO:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_MAX_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_MODIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_REQUEST_ENCRYPT_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_RESET_ALL_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field public static final enum CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 18
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v1, 0x0

    const-string v2, "CE_CMD_PMS_FIRST_CMD"

    const/16 v3, 0xfa0

    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_FIRST_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 19
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v2, 0x1

    const-string v3, "CE_CMD_PMS_ENROLL"

    const/16 v4, 0xfa1

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_ENROLL:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 20
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v3, 0x2

    const-string v4, "CE_CMD_PMS_VERIFY"

    const/16 v5, 0xfa2

    invoke-direct {v0, v4, v3, v5}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 21
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v4, 0x3

    const-string v5, "CE_CMD_PMS_MODIFY"

    const/16 v6, 0xfa3

    invoke-direct {v0, v5, v4, v6}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MODIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 22
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v5, 0x4

    const-string v6, "CE_CMD_PMS_DELETE"

    const/16 v7, 0xfa4

    invoke-direct {v0, v6, v5, v7}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_DELETE:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 23
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v6, 0x5

    const-string v7, "CE_CMD_PMS_GET_INFO"

    const/16 v8, 0xfa5

    invoke-direct {v0, v7, v6, v8}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_GET_INFO:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 24
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v7, 0x6

    const-string v8, "CE_CMD_PMS_REQUEST_ENCRYPT_DATA"

    const/16 v9, 0xfa6

    invoke-direct {v0, v8, v7, v9}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_REQUEST_ENCRYPT_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 25
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/4 v8, 0x7

    const-string v9, "CE_CMD_PMS_RESET_ALL_DATA"

    const/16 v10, 0xfa7

    invoke-direct {v0, v9, v8, v10}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_RESET_ALL_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    .line 26
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/16 v9, 0x8

    const-string v10, "CE_CMD_PMS_MAX_CMD"

    const/16 v11, 0xfa8

    invoke-direct {v0, v10, v9, v11}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MAX_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    const/16 v0, 0x9

    .line 16
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    sget-object v10, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_FIRST_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_ENROLL:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MODIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_DELETE:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_GET_INFO:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_REQUEST_ENCRYPT_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_RESET_ALL_DATA:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MAX_CMD:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->$VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->mCode:I

    return-void
.end method

.method public static get(I)Lcom/coloros/systemui/keyguard/security/verify/MethodType;
    .locals 5

    .line 35
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->values()[Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->getCode()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/security/verify/MethodType;
    .locals 1

    .line 16
    const-class v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/security/verify/MethodType;
    .locals 1

    .line 16
    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->$VALUES:[Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/security/verify/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->mCode:I

    return p0
.end method
