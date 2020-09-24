.class final Lcom/coloros/partners/dirac/a/c$1;
.super Ljava/lang/Object;
.source "RecoveryDiracUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/a/c;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/a/c;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/coloros/partners/dirac/a/c$1;->a:Lcom/coloros/partners/dirac/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/coloros/partners/dirac/a/c$1;->a:Lcom/coloros/partners/dirac/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/partners/dirac/a/c;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onServiceDisconnected, mService="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/partners/dirac/a/c$1;->a:Lcom/coloros/partners/dirac/a/c;

    iget-object v0, v0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoveryDiracUtils"

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
