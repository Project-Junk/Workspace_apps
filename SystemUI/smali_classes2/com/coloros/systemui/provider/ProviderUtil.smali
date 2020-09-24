.class public Lcom/coloros/systemui/provider/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field public static final DISABLE_STAT_ANIM_NAME:Ljava/lang/String; = "disable_status_bar_anim"

.field public static final NAVIGATIONBAR_BG_COLOR_LIST_KEY:Ljava/lang/String; = "sys_systemui_navigationbar_whitelist"

.field public static final NAVIGATIONBAR_BG_COLOR_LIST_NAME:Ljava/lang/String; = "sys_systemui_navigationbar_whitelist.xml"

.field public static final NAVIGATIONBAR_LIST_ENABLE_TOGGLE:Ljava/lang/String; = "isOpen"

.field public static final NAVIGATIONBAR_PKG_NAME:Ljava/lang/String; = "pkg"

.field public static final OPPO_COMPONENT_SAFE:Ljava/lang/String; = "oppo.permission.OPPO_COMPONENT_SAFE"

.field public static final QUICK_SETTINGS_TILE_KEY:Ljava/lang/String; = "sys_systemui_quicksettingstile_blacklist"

.field public static final QUICK_SETTINGS_TILE_NAME:Ljava/lang/String; = "sys_systemui_quicksettingstile_blacklist.xml"

.field public static final SHOW_NAVIGATIONBAR_HIDE_NAV_ICON_KEY:Ljava/lang/String; = "sys_systemui_showhidenavigationbaricon_blacklist"

.field public static final SHOW_NAVIGATIONBAR_HIDE_NAV_ICON_NAME:Ljava/lang/String; = "sys_systemui_showhidenavigationbaricon_blacklist.xml"

.field public static final TAG:Ljava/lang/String; = "SystemUI.ProviderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadDataFromFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 73
    invoke-static {p0, p1}, Lcom/coloros/common/util/Util;->getDataVersionFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0, p1}, Lcom/coloros/common/util/Util;->getRomupdateVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadDataFromDb remoteConfigVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " localConfigVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemUI.ProviderUtil"

    const-string v4, "Common"

    invoke-static {v4, v3, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 78
    invoke-static {p0, p1}, Lcom/coloros/common/util/Util;->getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlValue = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v2, "sys_systemui_navigationbar_whitelist"

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sys_systemui_navigationbar_whitelist.xml"

    .line 82
    invoke-static {p0, v2, v1}, Lcom/coloros/common/util/Util;->saveStrToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->getInstance()Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->setContext(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->getInstance()Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->loadNavigationBarColor()V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oppo.systemui/navigationbar"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const-string v2, "sys_systemui_showhidenavigationbaricon_blacklist"

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sys_systemui_showhidenavigationbaricon_blacklist.xml"

    .line 87
    invoke-static {p0, v3, v1}, Lcom/coloros/common/util/Util;->saveStrToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, v2}, Lcom/coloros/systemui/provider/ProviderUtil;->getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/navbar/AppNavigationBarList;->setAppShowHideNavIconList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v2, "sys_systemui_quicksettingstile_blacklist"

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "sys_systemui_quicksettingstile_blacklist.xml"

    .line 90
    invoke-static {p0, v3, v1}, Lcom/coloros/common/util/Util;->saveStrToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, v2}, Lcom/coloros/systemui/provider/ProviderUtil;->getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->setAppQuickSettingsBlackList(Ljava/util/List;)V

    .line 93
    invoke-static {p0, v1}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->checkQsSettingList(Landroid/content/Context;Ljava/util/List;)V

    .line 94
    sget-object v2, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    invoke-virtual {v2, v1}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->setStatusBarAnimBlackList(Ljava/util/List;)V

    .line 97
    :cond_2
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/coloros/common/util/Util;->setRomupdateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static declared-synchronized getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/coloros/systemui/provider/ProviderUtil;

    monitor-enter v0

    .line 104
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "sys_systemui_showhidenavigationbaricon_blacklist"

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "sys_systemui_showhidenavigationbaricon_blacklist.xml"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 112
    invoke-static {}, Lcom/coloros/systemui/navbar/AppNavigationBarList;->getDefaultAppShowHideNavIconList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v2, "sys_systemui_quicksettingstile_blacklist"

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 115
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "sys_systemui_quicksettingstile_blacklist.xml"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 117
    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->getdefaultQuickSettingsBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 129
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 139
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 140
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    if-eqz v4, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    .line 146
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "isOpen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Common"

    const-string v6, "SystemUI.ProviderUtil"

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOpen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 150
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "disable_status_bar_anim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    :cond_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "value"

    .line 152
    invoke-interface {v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Common"

    const-string v6, "SystemUI.ProviderUtil"

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getListFromLocalRomupdateFile_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    const-string v5, ""

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 156
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 171
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_5
    const-string v2, "SystemUI.ProviderUtil"

    const-string v3, "Got execption close permReader."

    .line 174
    :goto_2
    invoke-static {v2, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, p0

    move-object p0, v2

    goto :goto_3

    :catch_3
    :try_start_6
    const-string v3, "Common"

    const-string v4, "SystemUI.ProviderUtil"

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    monitor-exit v0

    return-object p0

    :goto_3
    :try_start_7
    const-string v2, "SystemUI.ProviderUtil"

    const-string v4, "Got execption parsing permissions."

    .line 167
    invoke-static {v2, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_7

    .line 171
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    move-exception p0

    :try_start_9
    const-string v2, "SystemUI.ProviderUtil"

    const-string v3, "Got execption close permReader."

    goto :goto_2

    :cond_7
    :goto_4
    const-string p0, "sys_systemui_showhidenavigationbaricon_blacklist"

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 182
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 183
    invoke-static {}, Lcom/coloros/systemui/navbar/AppNavigationBarList;->getDefaultAppShowHideNavIconList()Ljava/util/List;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v0

    return-object p0

    .line 186
    :cond_8
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v3, :cond_9

    .line 171
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catch_5
    move-exception p1

    :try_start_b
    const-string v1, "SystemUI.ProviderUtil"

    const-string v2, "Got execption close permReader."

    .line 174
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_9
    :goto_6
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 123
    :cond_a
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
