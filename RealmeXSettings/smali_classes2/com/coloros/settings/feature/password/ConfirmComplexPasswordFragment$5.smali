.class final Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmComplexPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;J)V
    .locals 2

    .line 536
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->h(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->f(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    .line 541
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->g(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    .line 542
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;I)I

    .line 543
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->e()V

    return-void
.end method
