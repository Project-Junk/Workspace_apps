.class public Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;
.super Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
.source "NoLinearVibrationSwitchPreference.java"


# instance fields
.field private a:Lcom/color/support/widget/ColorSwitch;

.field private volatile b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->b:Z

    .line 27
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->b:Z

    .line 27
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->c:Z

    .line 35
    invoke-static {}, Lcom/coloros/settings/utils/bh;->j()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->b:Z

    .line 27
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->c:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 44
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "switch_widget"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 47
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->c:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->a:Lcom/color/support/widget/ColorSwitch;

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->a:Lcom/color/support/widget/ColorSwitch;

    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/NoLinearVibrationSwitchPreference;->b:Z

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method
