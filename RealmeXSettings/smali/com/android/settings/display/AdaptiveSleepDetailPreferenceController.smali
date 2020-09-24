.class public Lcom/android/settings/display/AdaptiveSleepDetailPreferenceController;
.super Lcom/android/settings/display/AdaptiveSleepPreferenceController;
.source "AdaptiveSleepDetailPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_adaptive_sleep_available"

    .line 34
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermissions:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
