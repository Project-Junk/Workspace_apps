.class Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorQSDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSDateView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$ColorQSDateView$1()V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->access$002(Lcom/coloros/systemui/qs/widget/ColorQSDateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;

    return-void
.end method

.method public synthetic lambda$onReceive$1$ColorQSDateView$1()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_SET"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 55
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSDateView$1$3XyL8W72QSUU94eXKgRoPF_NUUs;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSDateView$1$3XyL8W72QSUU94eXKgRoPF_NUUs;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSDateView$1$4IWxmHwPf7w7SYKSZZHQvOBGO3w;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSDateView$1$4IWxmHwPf7w7SYKSZZHQvOBGO3w;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
