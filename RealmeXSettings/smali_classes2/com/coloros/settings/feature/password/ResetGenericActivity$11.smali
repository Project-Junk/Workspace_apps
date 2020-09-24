.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$11;
.super Landroid/os/CountDownTimer;
.source "ResetGenericActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 4

    .line 304
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1210d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
