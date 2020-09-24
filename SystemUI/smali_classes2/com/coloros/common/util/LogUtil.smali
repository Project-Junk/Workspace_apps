.class public Lcom/coloros/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/common/util/LogUtil$LogObserver;,
        Lcom/coloros/common/util/LogUtil$IDebug;
    }
.end annotation


# static fields
.field public static INTERNAL:Z = false

.field private static INTERNAL_KEYGUARD:Z = false

.field private static INTERNAL_NOTIFICATION:Z = false

.field private static INTERNAL_OTHERS:Z = false

.field private static INTERNAL_STATUSBAR:Z = false

.field private static final LEVEL_DEBUG:Ljava/lang/String; = "systemui_debug"

.field private static final LEVEL_INTERNAL_BIT:I = 0x10

.field private static final LEVEL_INTERNAL_DEBUG:Ljava/lang/String; = "systemui_internal_debug"

.field private static final LEVEL_INTERNAL_KEYGUARD_BIT:I = 0x10

.field private static final LEVEL_INTERNAL_NOTIFICATION_BIT:I = 0x100

.field private static final LEVEL_INTERNAL_OTHERS_BIT:I = 0x1000

.field private static final LEVEL_INTERNAL_STATUSBAR_BIT:I = 0x1

.field private static final LEVEL_NORMAL_BIT:I = 0x1

.field private static final LEVEL_TRACE_BIT:I = 0x100

.field public static NORMAL:Z = false

.field public static final TAG:Ljava/lang/String; = "SystemUi--"

.field private static TAGS:[Ljava/lang/String; = null

.field public static final TAG_AOD:Ljava/lang/String; = "Aod"

.field public static final TAG_AV:Ljava/lang/String; = "AirView"

.field public static final TAG_BACKUPRESTORE:Ljava/lang/String; = "BackupRestore"

.field public static final TAG_COMMON:Ljava/lang/String; = "Common"

.field public static final TAG_EP:Ljava/lang/String; = "EdgePanel"

.field public static final TAG_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field public static final TAG_NAVBAR:Ljava/lang/String; = "NavBar"

.field public static final TAG_NOTIFICATION:Ljava/lang/String; = "Notification"

.field public static final TAG_RECOVERY:Ljava/lang/String; = "Recovery"

.field public static final TAG_STACK_DIVIDER:Ljava/lang/String; = "StackDivider"

.field public static final TAG_STATUSBAR:Ljava/lang/String; = "Statusbar"

.field public static final TAG_VOLUME:Ljava/lang/String; = "Volume"

.field public static TRACE:Z = false

.field private static sContext:Landroid/content/Context; = null

.field private static sSeparator:Ljava/lang/String; = "-->"

.field private static sTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriDebug:Landroid/net/Uri;

.field private static sUriDebugInternal:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/common/util/LogUtil;->sTags:Ljava/util/HashMap;

    const-string v1, "Common"

    const-string v2, "Keyguard"

    const-string v3, "Notification"

    const-string v4, "Statusbar"

    const-string v5, "NavBar"

    const-string v6, "BackupRestore"

    const-string v7, "Recovery"

    const-string v8, "StackDivider"

    const-string v9, "Aod"

    const-string v10, "EdgePanel"

    const-string v11, "Volume"

    const-string v12, "AirView"

    .line 144
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/common/util/LogUtil;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 47
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sUriDebug:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 47
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sUriDebugInternal:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->updateLevel()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->updateInternalLevel()V

    return-void
.end method

.method private static getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDebugState(Ljava/lang/String;)I
    .locals 2

    .line 448
    :try_start_0
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDebugState, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemUi--"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSeparator()Ljava/lang/String;
    .locals 1

    .line 254
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/coloros/common/util/LogUtil;->sContext:Landroid/content/Context;

    const-string v0, "systemui_debug"

    .line 151
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/common/util/LogUtil;->sUriDebug:Landroid/net/Uri;

    const-string v0, "systemui_internal_debug"

    .line 152
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/common/util/LogUtil;->sUriDebugInternal:Landroid/net/Uri;

    .line 153
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->updateLevel()V

    .line 154
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->updateInternalLevel()V

    .line 155
    sget-object v0, Lcom/coloros/common/util/LogUtil;->TAGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 156
    sget-object v4, Lcom/coloros/common/util/LogUtil;->sTags:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/coloros/common/util/LogUtil$LogObserver;

    invoke-direct {v0, p1}, Lcom/coloros/common/util/LogUtil$LogObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/coloros/common/util/LogUtil$LogObserver;->observer(Landroid/content/Context;)V

    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V
    .locals 2

    .line 242
    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isInternalEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/coloros/common/util/LogUtil$IDebug;->debugInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 236
    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isInternalEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static isDebug(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDebug(Ljava/lang/String;I)Z
    .locals 0

    .line 426
    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->getDebugState(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInternalDebug()Z
    .locals 2

    const-string v0, "systemui_debug"

    const/16 v1, 0x10

    .line 332
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isInternalEnable(Ljava/lang/String;)Z
    .locals 6

    .line 180
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_9

    const/4 v0, -0x1

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3f2913f

    const/4 v5, 0x2

    if-eq v3, v4, :cond_4

    const v1, 0x222a07c6

    if-eq v3, v1, :cond_3

    const v1, 0x2d45dd0b

    if-eq v3, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "Notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_3
    const-string v1, "Keyguard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_4
    const-string v3, "Statusbar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v5, :cond_6

    .line 197
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL_OTHERS:Z

    goto :goto_3

    .line 193
    :cond_6
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL_NOTIFICATION:Z

    goto :goto_3

    .line 189
    :cond_7
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL_KEYGUARD:Z

    goto :goto_3

    .line 185
    :cond_8
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL_STATUSBAR:Z

    :cond_9
    :goto_3
    return v0
.end method

.method public static isInternalKeyguardDebug()Z
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x10

    .line 386
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isInternalNotificationDebug()Z
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x100

    .line 404
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isInternalOthersDebug()Z
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x1000

    .line 422
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isInternalStatusbarDebug()Z
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/4 v1, 0x1

    .line 368
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isNormalDebug()Z
    .locals 2

    const-string v0, "systemui_debug"

    const/4 v1, 0x1

    .line 314
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isTagEnable(Ljava/lang/String;)Z
    .locals 1

    .line 211
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sTags:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sTags:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTraceDebug()Z
    .locals 2

    const-string v0, "systemui_debug"

    const/16 v1, 0x100

    .line 350
    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static normal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V
    .locals 2

    .line 224
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/coloros/common/util/LogUtil$IDebug;->debugInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 218
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static setDebugState(Ljava/lang/String;IZ)V
    .locals 1

    .line 436
    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->getDebugState(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 442
    :goto_0
    sget-object p2, Lcom/coloros/common/util/LogUtil;->sContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setInternalDebugState(Z)V
    .locals 2

    const-string v0, "systemui_debug"

    const/16 v1, 0x10

    .line 323
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setInternalKeyguardDebugState(Z)V
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x10

    .line 377
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setInternalNotificationDebugState(Z)V
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x100

    .line 395
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setInternalOthersDebugState(Z)V
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/16 v1, 0x1000

    .line 413
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setInternalStatusbarDebugState(Z)V
    .locals 2

    const-string v0, "systemui_internal_debug"

    const/4 v1, 0x1

    .line 359
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setNormalDebugState(Z)V
    .locals 2

    const-string v0, "systemui_debug"

    const/4 v1, 0x1

    .line 305
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setSeparator(Ljava/lang/String;)V
    .locals 0

    .line 258
    sput-object p0, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    return-void
.end method

.method public static setTag(Ljava/lang/String;Z)V
    .locals 1

    .line 207
    sget-object v0, Lcom/coloros/common/util/LogUtil;->sTags:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setTraceDebugState(Z)V
    .locals 2

    const-string v0, "systemui_debug"

    const/16 v1, 0x100

    .line 341
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->setDebugState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 248
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static updateInternalLevel()V
    .locals 4

    const-string v0, "systemui_internal_debug"

    .line 171
    invoke-static {v0}, Lcom/coloros/common/util/LogUtil;->getDebugState(Ljava/lang/String;)I

    move-result v0

    .line 173
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0, v3}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL_STATUSBAR:Z

    .line 174
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL_KEYGUARD:Z

    .line 175
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL_NOTIFICATION:Z

    .line 176
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    sput-boolean v2, Lcom/coloros/common/util/LogUtil;->INTERNAL_OTHERS:Z

    return-void
.end method

.method private static updateLevel()V
    .locals 4

    const-string v0, "systemui_debug"

    .line 162
    invoke-static {v0}, Lcom/coloros/common/util/LogUtil;->getDebugState(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->updateisPanicVersion()V

    .line 165
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {v0, v3}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    .line 166
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    .line 167
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPanicVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->isDebug(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    sput-boolean v2, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    return-void
.end method

.method public static wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {p0}, Lcom/coloros/common/util/LogUtil;->isTagEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUi--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/coloros/common/util/LogUtil;->sSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
