.class public Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;
.super Lcom/android/settings/core/a;
.source "NightDisplayCustomStartTimePreferenceController.java"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mTimeFormatter:Lcom/android/settings/display/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 33
    new-instance p2, Lcom/android/settings/display/b;

    invoke-direct {p2, p1}, Lcom/android/settings/display/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/b;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 45
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/b;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 48
    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/settings/display/b;->a(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
