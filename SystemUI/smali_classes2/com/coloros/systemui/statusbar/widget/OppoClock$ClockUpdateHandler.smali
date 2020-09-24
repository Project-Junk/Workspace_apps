.class Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;
.super Landroid/os/Handler;
.source "OppoClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/OppoClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockUpdateHandler"
.end annotation


# instance fields
.field private final mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/statusbar/widget/OppoClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;->mClock:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;

    if-eqz p0, :cond_2

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getTimeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "Statusbar"

    const-string v0, "OppoClock"

    const-string v1, "week reference cleared while updating clock"

    invoke-static {p1, v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
