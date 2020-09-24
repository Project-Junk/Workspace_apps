.class final Lcom/coloros/settings/feature/password/module/CodeBookModule$1;
.super Landroid/os/CountDownTimer;
.source "CodeBookModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/module/CodeBookModule;->showExitCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcolor/support/v7/app/AlertDialog;

.field final synthetic c:Landroid/content/res/Resources;

.field final synthetic d:Lcom/coloros/settings/feature/password/module/CodeBookModule;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/module/CodeBookModule;Lcolor/support/v7/app/AlertDialog;Landroid/content/res/Resources;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->d:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->b:Lcolor/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->c:Landroid/content/res/Resources;

    const-wide/16 p1, 0xbb8

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x4

    .line 100
    iput p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->a:I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->b:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120610

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->c:Landroid/content/res/Resources;

    const v2, 0x7f0600d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->b:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->a:I

    const/4 p2, 0x1

    if-lez p1, :cond_0

    sub-int/2addr p1, p2

    .line 106
    iput p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->a:I

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->c:Landroid/content/res/Resources;

    const v1, 0x7f120611

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
