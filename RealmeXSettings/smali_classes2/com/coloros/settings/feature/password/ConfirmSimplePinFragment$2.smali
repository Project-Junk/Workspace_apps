.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;
.super Landroid/os/CountDownTimer;
.source "ConfirmSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(J)V
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

    .line 289
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "ConfirmSimplePinFragment"

    const-string v1, "countdownForFingerprint onFinish"

    .line 309
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->g(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    .line 312
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->h(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->d(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->i(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120cad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->f(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->j(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Lcom/android/settings/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    :cond_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->d(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 297
    div-long/2addr p1, v0

    long-to-int p1, p1

    if-lez p1, :cond_1

    .line 299
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->f(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    const v1, 0x7f120b75

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
