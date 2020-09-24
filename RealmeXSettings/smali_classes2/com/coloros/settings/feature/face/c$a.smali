.class final Lcom/coloros/settings/feature/face/c$a;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "FaceSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/face/c$a;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/coloros/settings/feature/face/c$a;->b:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/coloros/settings/feature/face/c$a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 1

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRemovalError"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceSwitchHelper"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/feature/face/c$a;->c:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p2, 0x3f9

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onRemovalSucceeded "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/face/c$a;->b:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceSwitchHelper"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/face/c$a;->b:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 p2, 0x3f7

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/c$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/c;->a(Landroid/content/Context;)V

    return-void
.end method
