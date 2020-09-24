.class public Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ExSleepPreferenceController.java"


# static fields
.field public static final KEY_SLEEP_OPTIMIZE:Ljava/lang/String; = "realme_lab_ex_deep_sleep"

.field private static final STR_EX_DEEP_SLEEP:Ljava/lang/String; = "oppoguardelf_ex_deep_sleep_status"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "realme_lab_ex_deep_sleep"

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.version.exp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 36
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "realme.common.deepsleep.support"

    .line 37
    invoke-static {v1, v2}, Lcom/coloros/settings/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppoguardelf_ex_deep_sleep_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppoguardelf_ex_deep_sleep_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
