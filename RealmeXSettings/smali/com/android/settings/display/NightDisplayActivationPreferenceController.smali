.class public Lcom/android/settings/display/NightDisplayActivationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NightDisplayActivationPreferenceController.java"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private mTimeFormatter:Lcom/android/settings/display/b;

.field private mTurnOffButton:Landroid/widget/Button;

.field private mTurnOnButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;-><init>(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 52
    new-instance p2, Lcom/android/settings/display/b;

    invoke-direct {p2, p1}, Lcom/android/settings/display/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/b;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Landroid/hardware/display/ColorDisplayManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal()V

    return-void
.end method

.method private updateStateInternal()V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v4, 0x7f120e50

    goto :goto_0

    :cond_1
    const v4, 0x7f120e53

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/b;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 113
    invoke-virtual {v6}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 114
    invoke-virtual {v6}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 112
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/display/b;->a(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 109
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 116
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    const v2, 0x7f120e52

    goto :goto_2

    :cond_4
    const v2, 0x7f120e55

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const v2, 0x7f120e51

    goto :goto_3

    :cond_6
    const v2, 0x7f120e54

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/16 v2, 0x8

    if-eqz v0, :cond_7

    .line 126
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a0461

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0460

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    .line 74
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/b;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/b;->b(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result p1

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal()V

    return-void
.end method
