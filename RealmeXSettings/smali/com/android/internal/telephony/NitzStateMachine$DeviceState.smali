.class public Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceState"
.end annotation


# static fields
.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private final mNitzUpdateDiff:I

.field private final mNitzUpdateSpacing:I

.field private final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    const-string p1, "ro.nitz_update_spacing"

    const v0, 0x927c0

    .line 106
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateSpacing:I

    const-string p1, "ro.nitz_update_diff"

    const/16 v0, 0x7d0

    .line 108
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateDiff:I

    return-void
.end method


# virtual methods
.method public getIgnoreNitz()Z
    .locals 2

    const-string v0, "gsm.ignore-nitz"

    .line 132
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "yes"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkCountryIsoForPhone()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNitzUpdateDiffMillis()I
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateDiff:I

    const-string v2, "nitz_update_diff"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNitzUpdateSpacingMillis()I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateSpacing:I

    const-string v2, "nitz_update_spacing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
