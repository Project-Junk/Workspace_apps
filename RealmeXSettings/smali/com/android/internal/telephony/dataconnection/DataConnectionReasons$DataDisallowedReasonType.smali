.class public final enum Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
.super Ljava/lang/Enum;
.source "DataConnectionReasons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataDisallowedReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;


# instance fields
.field private mIsHardReason:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 103
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v1, 0x0

    const-string v2, "DATA_DISABLED"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v2, 0x1

    const-string v3, "ROAMING_DISABLED"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v3, 0x2

    const-string v4, "NOT_ATTACHED"

    invoke-direct {v0, v4, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v4, 0x3

    const-string v5, "RECORD_NOT_LOADED"

    invoke-direct {v0, v5, v4, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v5, 0x4

    const-string v6, "INVALID_PHONE_STATE"

    invoke-direct {v0, v6, v5, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v6, 0x5

    const-string v7, "CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    invoke-direct {v0, v7, v6, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v7, 0x6

    const-string v8, "PS_RESTRICTED"

    invoke-direct {v0, v8, v7, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/4 v8, 0x7

    const-string v9, "UNDESIRED_POWER_STATE"

    invoke-direct {v0, v9, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v9, 0x8

    const-string v10, "INTERNAL_DATA_DISABLED"

    invoke-direct {v0, v10, v9, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v10, 0x9

    const-string v11, "DEFAULT_DATA_UNSELECTED"

    invoke-direct {v0, v11, v10, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v11, 0xa

    const-string v12, "RADIO_DISABLED_BY_CARRIER"

    invoke-direct {v0, v12, v11, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v12, 0xb

    const-string v13, "APN_NOT_CONNECTABLE"

    invoke-direct {v0, v13, v12, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v13, 0xc

    const-string v14, "ON_IWLAN"

    invoke-direct {v0, v14, v13, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v14, 0xd

    const-string v15, "IN_ECBM"

    invoke-direct {v0, v15, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const/16 v0, 0xe

    .line 101
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v15, v0, v1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-boolean p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->mIsHardReason:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
    .locals 1

    .line 101
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
    .locals 1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-object v0
.end method


# virtual methods
.method final isHardReason()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->mIsHardReason:Z

    return v0
.end method
