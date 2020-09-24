.class final enum Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
.super Ljava/lang/Enum;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GetSpnFsmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1719
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1720
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v2, 0x1

    const-string v3, "INIT"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1722
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v3, 0x2

    const-string v4, "READ_SPN_3GPP"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1724
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v4, 0x3

    const-string v5, "READ_SPN_CPHS"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1726
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v5, 0x4

    const-string v6, "READ_SPN_SHORT_CPHS"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const/4 v0, 0x5

    .line 1718
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v6, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .locals 1

    .line 1718
    const-class v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .locals 1

    .line 1718
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-object v0
.end method
