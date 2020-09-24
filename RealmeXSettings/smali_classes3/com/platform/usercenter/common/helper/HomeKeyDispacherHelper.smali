.class public Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;
.super Ljava/lang/Object;
.source "HomeKeyDispacherHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;,
        Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeKeyDispacherHelper"


# instance fields
.field private final mHomeKeyDispatcherListener:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

.field private final mHomeKeyReceiver:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;-><init>(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;)V

    iput-object v0, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->mHomeKeyReceiver:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;

    .line 27
    iput-object p1, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->mHomeKeyDispatcherListener:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    return-void
.end method

.method static synthetic access$000(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;)Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->mHomeKeyDispatcherListener:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    return-object p0
.end method


# virtual methods
.method public registerHomeKeyPress(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "registerHomeKeyPress"

    .line 32
    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->mHomeKeyReceiver:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public unRegisterHomeKeyPress(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "unRegisterHomeKeyPress"

    .line 41
    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->mHomeKeyReceiver:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
