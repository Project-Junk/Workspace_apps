.class public Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeKeyDispacherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# static fields
.field static final SYSTEM_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_REASON:Ljava/lang/String; = "reason"

.field static final SYSTEM_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;


# direct methods
.method public constructor <init>(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;

    invoke-static {p1}, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->access$000(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;)Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "HomeKeyPress"

    .line 62
    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;

    invoke-static {p1}, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;->access$000(Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper;)Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/platform/usercenter/common/helper/HomeKeyDispacherHelper$HomeKeyDispatcherListener;->onHomeKeyPress()V

    return-void

    :cond_0
    const-string p2, "recentapps"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
