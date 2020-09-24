.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v1, 0x0

    const-string v2, "APPSTATE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v2, 0x1

    const-string v3, "APPSTATE_DETECTED"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v3, 0x2

    const-string v4, "APPSTATE_PIN"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v4, 0x3

    const-string v5, "APPSTATE_PUK"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v5, 0x4

    const-string v6, "APPSTATE_SUBSCRIPTION_PERSO"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v6, 0x5

    const-string v7, "APPSTATE_READY"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v0, 0x6

    .line 47
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 1

    .line 47
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object v0
.end method


# virtual methods
.method final isAppNotReady()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

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

.method final isAppReady()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isPinRequired()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isPukRequired()Z
    .locals 1

    .line 66
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isSubscriptionPersoEnabled()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
