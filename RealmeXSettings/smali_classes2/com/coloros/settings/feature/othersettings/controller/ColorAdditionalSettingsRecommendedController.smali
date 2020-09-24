.class public Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorAdditionalSettingsRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "addition_settings_bottom_recommended"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "addition_settings_bottom_recommended"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "addition_settings_bottom_recommended"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    const-string v2, "com.coloros.operationtips"

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "additional_settings"

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    const v4, 0x7f120f2b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "operation_tips"

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f121656

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "language"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;->isPreferenceAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.heytap.cloud.action.BACKUP_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.heytap.cloud"

    .line 80
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "enter_from"

    const-string v4, "setting\u0001cloud"

    .line 81
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f12051b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cloud_backup"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
