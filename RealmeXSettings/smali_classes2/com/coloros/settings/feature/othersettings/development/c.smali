.class public final Lcom/coloros/settings/feature/othersettings/development/c;
.super Lcom/android/settings/development/o;
.source "ColorMockLocationAppPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/o;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    return-void
.end method


# virtual methods
.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/c;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/c;->mContext:Landroid/content/Context;

    const-class v1, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v1, "android.permission.ACCESS_MOCK_LOCATION"

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/c;->d:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/c;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
