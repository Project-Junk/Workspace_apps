.class public Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;
.super Lcom/android/settings/core/a;
.source "ScreenZoomPreferenceController.java"


# static fields
.field public static final KEY_FONT_DISPLAY:Ljava/lang/String; = "display_settings_screen_zoom"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "display_settings_screen_zoom"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getAssignment()Ljava/lang/String;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->aq(Landroid/content/Context;)I

    move-result v1

    const-string v2, ","

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/coloros/settings/utils/al;->b:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/coloros/settings/utils/al;->a:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/android/settingslib/f/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/f/b;-><init>(Landroid/content/Context;)V

    .line 1185
    iget v1, v0, Lcom/android/settingslib/f/b;->e:I

    .line 1189
    iget v2, v0, Lcom/android/settingslib/f/b;->d:I

    .line 2181
    iget-object v0, v0, Lcom/android/settingslib/f/b;->c:[I

    if-eqz v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    aget v0, v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-le v0, v2, :cond_4

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12132b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    if-ge v0, v2, :cond_5

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121332

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121329

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 31
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;->getAssignment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
