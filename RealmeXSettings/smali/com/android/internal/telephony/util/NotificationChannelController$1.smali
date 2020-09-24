.class Lcom/android/internal/telephony/util/NotificationChannelController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/NotificationChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/util/NotificationChannelController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/util/NotificationChannelController$1;->this$0:Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->access$000(Landroid/content/Context;)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    .line 150
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 151
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->access$100(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
