.class public Lcom/android/settings/display/NightDisplayFooterPreferenceController;
.super Lcom/android/settings/core/a;
.source "NightDisplayFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "footer_preference"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x7f120e69

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
