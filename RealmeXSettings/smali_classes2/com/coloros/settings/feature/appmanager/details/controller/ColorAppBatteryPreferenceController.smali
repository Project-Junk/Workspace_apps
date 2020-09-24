.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;
.source "ColorAppBatteryPreferenceController.java"


# static fields
.field private static final GOVERNMENT_WHITELIST_PATH:Ljava/lang/String; = "/system/etc"

.field private static final GOVERNMENT_WHITELIST_XML:Ljava/lang/String; = "oppo_customize_whitelist.xml"

.field private static final TAG:Ljava/lang/String; = "ColorAppBatteryPreferenceController"


# instance fields
.field private mOppoWhiteListManager:Landroid/app/OppoWhiteListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 60
    new-instance p1, Landroid/app/OppoWhiteListManager;

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mOppoWhiteListManager:Landroid/app/OppoWhiteListManager;

    return-void
.end method

.method private getFileStreamFromProvider(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-static {p2, p1, v0}, Lcom/color/settings/ColorSettings;->readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fail to read file from colorProvider e="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorAppBatteryPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getListFromStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "failed parsing "

    const-string v1, "Failed to close state FileInputStream "

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "ColorAppBatteryPreferenceController"

    if-nez p1, :cond_0

    const-string p1, "getListFromStream stream is null"

    .line 152
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 156
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v5, 0x0

    .line 157
    invoke-interface {v4, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 162
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    .line 163
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "att"

    .line 164
    invoke-interface {v4, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 166
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-eqz p1, :cond_3

    .line 184
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v4

    .line 180
    :try_start_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 184
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v4, "failed IOException "

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_3

    .line 184
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_3
    move-exception v4

    .line 176
    :try_start_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_3

    .line 184
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_4
    move-exception v4

    .line 174
    :try_start_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_3

    .line 184
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_0

    :catch_5
    move-exception v4

    .line 172
    :try_start_a
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p1, :cond_3

    .line 184
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :cond_3
    :goto_0
    return-object v2

    :goto_1
    if-eqz p1, :cond_4

    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_2

    :catch_6
    move-exception p1

    .line 187
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4
    :goto_2
    throw v0
.end method

.method private static isOppoDisable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const-string v0, "oppo.appdisable.support"

    .line 124
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 126
    invoke-static {p0}, Lcom/color/compat/content/pm/ApplicationInfoNative;->getColorFreezeState(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    sget v0, Lcom/color/compat/content/pm/PackageManagerNative;->COLOR_STATE_FREEZE_FREEZED:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private readXMLFile(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/etc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oppo_customize_whitelist.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->getFileStreamFromProvider(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->getListFromStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private startPowerUse()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coloros.oppoguardelf"

    const-string v2, "com.coloros.powermanager.fuelgaue.PowerControlActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "callingSource"

    const/4 v2, -0x1

    .line 110
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "drainType"

    const-string v2, "APP"

    .line 111
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 112
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    const-string v0, "oppo.business.custom"

    .line 67
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->readXMLFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mOppoWhiteListManager:Landroid/app/OppoWhiteListManager;

    invoke-virtual {v1}, Landroid/app/OppoWhiteListManager;->getGlobalWhiteList()Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d:I

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 79
    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->isOppoDisable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "app_detail_power"

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    .line 92
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 93
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorAppBatteryPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->startPowerUse()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateBattery()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
