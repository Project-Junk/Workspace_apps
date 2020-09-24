.class public Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorKeepOnLookingController.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field public static final KEEPON_LOOKING:Ljava/lang/String; = "keep_on_looking"

.field public static final KEY_KEEPON_LOOKING:Ljava/lang/String; = "key_keep_on_looking"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "adaptive_sleep"

.field private static final TAG:Ljava/lang/String; = "ColorKeepOnLookingController"


# instance fields
.field private mHasSufficientPermissions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "key_keep_on_looking"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.CAMERA"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mHasSufficientPermissions:Z

    return-void
.end method

.method public static availabilityStatus(Landroid/content/Context;)Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "com.android.internal.R.bool.config_adaptive_sleep_available"

    .line 71
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "availabilityStatus\uff1aWhether properties are configured config_adaptive_sleep_available : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorKeepOnLookingController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->availabilityStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mHasSufficientPermissions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adaptive_sleep"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "keep_on_looking"

    invoke-static {v0, v2, p1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    return p1
.end method
