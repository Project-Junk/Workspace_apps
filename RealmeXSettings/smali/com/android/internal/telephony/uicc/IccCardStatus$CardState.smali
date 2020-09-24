.class public final enum Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public static final enum CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v1, 0x0

    const-string v2, "CARDSTATE_ABSENT"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x1

    const-string v3, "CARDSTATE_PRESENT"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v3, 0x2

    const-string v4, "CARDSTATE_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v4, 0x3

    const-string v5, "CARDSTATE_RESTRICTED"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 1

    .line 30
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v0
.end method


# virtual methods
.method final isCardPresent()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 41
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

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
