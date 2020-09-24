.class public Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;
.super Ljava/lang/Object;
.source "SmallAppUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUi_SmallAppUtil"

.field public static final URI_ALL_APP:Ljava/lang/String; = "content://com.nearme.instant.setting/notification"

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSmallAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/smallApp/SmallApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sLockObject:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;
    .locals 3

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    sget-object v0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v2, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    sget-object v1, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/smallApp/SmallApp;

    :cond_1
    if-nez v1, :cond_2

    .line 86
    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallAppFromProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 89
    sget-object p0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 94
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/SmallAppHelper;

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;

    if-eqz p0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isRegister()Z

    move-result p1

    if-nez p1, :cond_4

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->initHelper(Landroid/os/Handler;)V

    .line 101
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getSmallAppFromProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;
    .locals 8

    const-string v0, "SystemUi_SmallAppUtil"

    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.nearme.instant.setting/notification/"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 111
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    invoke-static {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->createByCursor(Landroid/database/Cursor;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 118
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v1

    .line 115
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmallApp-e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSmallApp:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p0, :cond_2

    .line 118
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    throw p1
.end method

.method public static initSmallAppInfo(Landroid/content/Context;)V
    .locals 8

    .line 43
    sget-object v0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 47
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.nearme.instant.setting/notification"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    :cond_0
    invoke-static {v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->createByCursor(Landroid/database/Cursor;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    sget-object v2, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    .line 61
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string v2, "SystemUi_SmallAppUtil"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSmallAppInfo-e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    :try_start_4
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_4

    const-string p0, "SystemUi_SmallAppUtil"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSmallAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    if-eqz v1, :cond_5

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_5
    throw p0

    :catchall_1
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static updateSmallApp(Landroid/content/Context;Lcom/coloros/systemui/notification/smallApp/SmallApp;)V
    .locals 3

    .line 127
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "notify"

    .line 128
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isNotify()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "badge"

    .line 129
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isBadge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "banner"

    .line 130
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isBanner()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "hidedetail"

    .line 131
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isHideDetail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "light"

    .line 132
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isLight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "lockscreen"

    .line 133
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isLockScreen()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "vibrate"

    .line 134
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isVibrate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "priority"

    .line 135
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isPriprity()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "dot"

    .line 136
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isCircleBadge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ring"

    .line 137
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isSound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isPropertiesOnOs6NotAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "statusbar"

    .line 139
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isShowIcon()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "statusbar_user"

    .line 140
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isChangeableShowIcon()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "fold"

    .line 141
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isFold()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "fold_user"

    .line 142
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isChangeableFold()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isPropertiesOnOs7NotAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "smart_fold"

    .line 145
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getStowOption()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.nearme.instant.setting/notification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSmallApp-e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUi_SmallAppUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static updateSmallAppInfo()V
    .locals 2

    .line 71
    sget-object v0, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->sSmallAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
