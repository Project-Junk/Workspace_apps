.class public Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;
.super Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.source "Iris5PreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# static fields
.field public static final KEY_IRIS5:Ljava/lang/String; = "key_iris5"

.field private static final KEY_OSIE_CATEGORY:Ljava/lang/String; = "key_osie_category"


# instance fields
.field private mIris5ContentObserver:Landroid/database/ContentObserver;

.field private mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_iris5"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const-string v0, "key_osie_category"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz v0, :cond_0

    const/16 v1, 0x2e

    .line 74
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5Preference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected updateUiData(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->i(Landroid/content/Context;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->collectIris5SwitchEvent(Landroid/content/Context;Z)V

    return-void
.end method
