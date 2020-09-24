.class Lcom/coloros/systemui/statusbar/widget/OppoClock$2;
.super Ljava/lang/Object;
.source "OppoClock.java"

# interfaces
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/OppoClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "OppoClock"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$302(Lcom/coloros/systemui/statusbar/widget/OppoClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    const/16 p1, 0x12c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-static {p2, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoClock;I)V

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoClock;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoClock;Ljava/lang/CharSequence;)V

    return-void
.end method
