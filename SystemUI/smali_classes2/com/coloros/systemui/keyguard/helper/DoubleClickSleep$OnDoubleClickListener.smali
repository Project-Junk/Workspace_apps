.class Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleClickSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDoubleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "goToSleep in onDoubleTap: isDoubleClickSleepEnabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->access$000(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DoubleClickSleep"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->access$000(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->access$200(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
