.class public Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;
.super Lcom/android/settings/core/a;
.source "FlashBackButtonController.java"


# static fields
.field private static final KEY_FLOATING_ASSISTANT:Ljava/lang/String; = "flash_back_button"


# instance fields
.field private final ACTIVITY_AIRVIEWMAINSETTINGSACTIVITY:Ljava/lang/String;

.field private final PACKAGE_FLOATASSISTANT:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p2, "flash_back_button"

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "com.coloros.floatassistant"

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->PACKAGE_FLOATASSISTANT:Ljava/lang/String;

    const-string p2, "com.coloros.airview.settings.AirViewMainSettingsActivity"

    .line 31
    iput-object p2, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->ACTIVITY_AIRVIEWMAINSETTINGSACTIVITY:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "flash_back_button"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 42
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/bh;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/FlashBackButtonController;->title:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
