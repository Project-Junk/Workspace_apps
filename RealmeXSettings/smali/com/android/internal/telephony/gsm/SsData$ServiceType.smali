.class public final enum Lcom/android/internal/telephony/gsm/SsData$ServiceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v1, 0x0

    const-string v2, "SS_CFU"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v2, 0x1

    const-string v3, "SS_CF_BUSY"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v3, 0x2

    const-string v4, "SS_CF_NO_REPLY"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v4, 0x3

    const-string v5, "SS_CF_NOT_REACHABLE"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v5, 0x4

    const-string v6, "SS_CF_ALL"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v6, 0x5

    const-string v7, "SS_CF_ALL_CONDITIONAL"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v7, 0x6

    const-string v8, "SS_CLIP"

    invoke-direct {v0, v8, v7}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/4 v8, 0x7

    const-string v9, "SS_CLIR"

    invoke-direct {v0, v9, v8}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v9, 0x8

    const-string v10, "SS_COLP"

    invoke-direct {v0, v10, v9}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v10, 0x9

    const-string v11, "SS_COLR"

    invoke-direct {v0, v11, v10}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v11, 0xa

    const-string v12, "SS_WAIT"

    invoke-direct {v0, v12, v11}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v12, 0xb

    const-string v13, "SS_BAOC"

    invoke-direct {v0, v13, v12}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v13, 0xc

    const-string v14, "SS_BAOIC"

    invoke-direct {v0, v14, v13}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v14, 0xd

    const-string v15, "SS_BAOIC_EXC_HOME"

    invoke-direct {v0, v15, v14}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v15, 0xe

    const-string v14, "SS_BAIC"

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v14, "SS_BAIC_ROAMING"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v14, "SS_ALL_BARRING"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v14, "SS_OUTGOING_BARRING"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v14, "SS_INCOMING_BARRING"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v0, 0x13

    .line 34
    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    sget-object v14, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    .line 34
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0
.end method


# virtual methods
.method public final isTypeBarring()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isTypeCF()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isTypeCW()Z
    .locals 1

    .line 66
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTypeClip()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTypeClir()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTypeUnConditional()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
