.class public Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;
.super Ljava/lang/Object;
.source "MultiUserContentHelper.java"


# static fields
.field private static final HOLDERS_PENDING_ADD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOLDERS_PENDING_DELETE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOLDERS_REGISTERED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private static final TAG:Ljava/lang/String; = "MultiUserContentHelper"

.field private static volatile sLock:Ljava/lang/Object;

.field private static volatile sTraversing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_ADD:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_DELETE:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper$1;

    invoke-direct {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper$1;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->updateSync()V

    return-void
.end method

.method public static getCurrentUserContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    .line 241
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUserContext: contextUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    const-string v3, "MultiUserContentHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-object p0

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 153
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    .line 161
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 145
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    .line 189
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSystemStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    .line 207
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 149
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "register() e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserContentHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "register() e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserContentHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerAsGlobal(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerAsSystem(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 3

    const-string v0, "Common"

    const-string v1, "MultiUserContentHelper"

    const-string v2, "registerForUserSwitch1()"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p3, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    new-instance v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;-><init>(Landroid/content/Context;Landroid/database/ContentObserver;Landroid/net/Uri;Z)V

    .line 87
    sget-object p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 88
    :try_start_0
    sget-boolean p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sTraversing:Z

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_ADD:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 3

    const-string v0, "Common"

    const-string v1, "MultiUserContentHelper"

    const-string v2, "registerForUserSwitch2()"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p0, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p3, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 100
    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->register(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    new-instance v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;-><init>(Landroid/content/Context;Landroid/database/ContentObserver;Landroid/net/Uri;Z)V

    .line 102
    invoke-virtual {v0, p4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->setUserId(I)V

    .line 103
    sget-object p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 104
    :try_start_0
    sget-boolean p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sTraversing:Z

    if-eqz p1, :cond_0

    .line 105
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_ADD:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static registerMultiUserListener()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->LISTENER:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    return-void
.end method

.method public static setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x2

    .line 169
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static setSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x2

    .line 197
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static setSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x2

    .line 215
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3

    const-string v0, "Common"

    const-string v1, "MultiUserContentHelper"

    const-string v2, "unregister()"

    .line 113
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    sget-object p0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 116
    :try_start_0
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;

    .line 117
    invoke-virtual {v1, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->isTarget(Landroid/database/ContentObserver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-boolean p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sTraversing:Z

    if-eqz p1, :cond_1

    .line 119
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_DELETE:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    sget-object p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static updateSync()V
    .locals 3

    const-string v0, "Common"

    const-string v1, "MultiUserContentHelper"

    const-string v2, "updateSync()"

    .line 130
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 132
    :try_start_0
    sput-boolean v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sTraversing:Z

    .line 133
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    sget-object v2, Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;->INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    sget-object v2, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_DELETE:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 135
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_REGISTERED:Ljava/util/List;

    sget-object v2, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_ADD:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_DELETE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 137
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->HOLDERS_PENDING_ADD:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 138
    sput-boolean v1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->sTraversing:Z

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
