.class final Lcom/coloros/partners/dirac/activity/AbsActivity$1;
.super Lcom/oppo/a/a/a/a$a;
.source "AbsActivity.java"


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

    .line 63
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity$1;->a:Lcom/coloros/partners/dirac/activity/AbsActivity;

    invoke-direct {p0}, Lcom/oppo/a/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity$1;->a:Lcom/coloros/partners/dirac/activity/AbsActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->c()V

    return-void
.end method

.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity$1;->a:Lcom/coloros/partners/dirac/activity/AbsActivity;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Z)V

    return-void
.end method
