.class public Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;
.super Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;
.source "TouchAndHoldDelayPreferenceController.java"


# instance fields
.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValueToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->setSingleSelect(Z)V

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300ad

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 42
    aget-object v0, p1, p2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutDefault:I

    .line 3030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 2034
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ac

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 44
    array-length v1, p1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    aget-object v3, p1, p2

    aget-object v4, v0, p2

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutDefault:I

    const-string v1, "long_press_timeout"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->setDefaultEntry(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of v0, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "long_press_timeout"

    .line 67
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/controller/TouchAndHoldDelayPreferenceController;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
