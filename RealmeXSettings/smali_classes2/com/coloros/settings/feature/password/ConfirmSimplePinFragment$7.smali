.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;
.super Landroid/os/CountDownTimer;
.source "ConfirmSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;J)V
    .locals 2

    .line 695
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->p(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    .line 700
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;I)I

    .line 701
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    sget-object p2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    return-void
.end method
