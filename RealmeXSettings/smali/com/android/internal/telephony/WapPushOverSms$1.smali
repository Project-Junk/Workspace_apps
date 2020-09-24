.class Lcom/android/internal/telephony/WapPushOverSms$1;
.super Landroid/content/BroadcastReceiver;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received broadcast "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WAP PUSH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;

    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-static {p2}, Lcom/android/internal/telephony/WapPushOverSms;->access$000(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$1;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->start()V

    :cond_0
    return-void
.end method
