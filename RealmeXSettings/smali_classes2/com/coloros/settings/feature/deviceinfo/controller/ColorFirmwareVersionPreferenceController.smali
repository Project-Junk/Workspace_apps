.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorFirmwareVersionPreferenceController.java"


# static fields
.field private static final FIRMWARE_VERSION_KEY:Ljava/lang/String; = "android_firmware_version"

.field private static final TAG:Ljava/lang/String; = "ColorFirmwareVersionPreferenceController"


# instance fields
.field private mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

.field private mFunDisallowedBySystem:Z

.field private mHits:[J

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android_firmware_version"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 35
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mHits:[J

    .line 42
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "android_firmware_version"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 1106
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/settings/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mHits:[J

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mHits:[J

    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v1

    .line 73
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mHits:[J

    aget-wide v3, p1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    sub-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v1, "no_fun"

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "ColorFirmwareVersionPreferenceController"

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mFunDisallowedBySystem:Z

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

    invoke-static {p1, v2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_1
    const-string p1, "Sorry, no fun for you!"

    .line 79
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 83
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-class v0, Lcom/android/internal/app/PlatLogoActivity;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    .line 84
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start activity "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v2
.end method
