.class public final Lcom/android/settings/location/b;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/settingslib/location/a;)Landroidx/preference/Preference;
    .locals 2

    .line 69
    iget-object v0, p2, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1203
    invoke-static {p2}, Lcom/android/settings/location/d;->a(Lcom/android/settingslib/location/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/settings/location/d$a;

    invoke-direct {p2, p1, v1}, Lcom/android/settings/location/d$a;-><init>(Landroid/content/Context;B)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {p2, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 1209
    :cond_1
    invoke-static {p2}, Lcom/android/settings/location/d;->a(Lcom/android/settingslib/location/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/location/d$b;

    iget-object p2, p2, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/location/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p2, p2, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/location/SettingsInjector;->a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/a;

    move-result-object p2

    .line 58
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_0

    .line 60
    iget-object p3, p0, Lcom/android/settings/location/b;->a:Landroid/content/Context;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/android/settings/location/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return-object p2
.end method
