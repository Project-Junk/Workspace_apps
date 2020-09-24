.class final enum Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
.super Ljava/lang/Enum;
.source "DataConnectionReasons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataAllowedReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 136
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v3, 0x2

    const-string v4, "UNMETERED_APN"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v4, 0x3

    const-string v5, "RESTRICTED_REQUEST"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v5, 0x4

    const-string v6, "EMERGENCY_APN"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const/4 v0, 0x5

    .line 132
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
    .locals 1

    .line 132
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-object v0
.end method
