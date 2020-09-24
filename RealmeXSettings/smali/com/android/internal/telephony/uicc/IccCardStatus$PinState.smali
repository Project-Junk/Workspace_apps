.class public final enum Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v1, 0x0

    const-string v2, "PINSTATE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v2, 0x1

    const-string v3, "PINSTATE_ENABLED_NOT_VERIFIED"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v3, 0x2

    const-string v4, "PINSTATE_ENABLED_VERIFIED"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v4, 0x3

    const-string v5, "PINSTATE_DISABLED"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v5, 0x4

    const-string v6, "PINSTATE_ENABLED_BLOCKED"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v6, 0x5

    const-string v7, "PINSTATE_ENABLED_PERM_BLOCKED"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v0, 0x6

    .line 46
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 1

    .line 46
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object v0
.end method


# virtual methods
.method final isPermBlocked()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

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
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

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
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
