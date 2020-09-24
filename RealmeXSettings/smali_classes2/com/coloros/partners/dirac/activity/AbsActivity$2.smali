.class final Lcom/coloros/partners/dirac/activity/AbsActivity$2;
.super Ljava/lang/Object;
.source "AbsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/AbsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/AbsActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/AbsActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity$2;->a:Lcom/coloros/partners/dirac/activity/AbsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity$2;->a:Lcom/coloros/partners/dirac/activity/AbsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1164
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "doOnServiceDisconnected, name="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsActivity"

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
