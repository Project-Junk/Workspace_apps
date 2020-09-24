.class public final Lcom/android/settings/utils/b$2;
.super Landroid/os/CountDownTimer;
.source "CodeBookDeleteConfirmCountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcolor/support/v7/app/AlertDialog;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/android/settings/utils/b;


# direct methods
.method public constructor <init>(Lcom/android/settings/utils/b;Lcolor/support/v7/app/AlertDialog;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/android/settings/utils/b$2;->f:Lcom/android/settings/utils/b;

    iput-object p2, p0, Lcom/android/settings/utils/b$2;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/utils/b$2;->c:I

    const p1, 0x7f120607

    iput p1, p0, Lcom/android/settings/utils/b$2;->d:I

    const p1, 0x7f120606

    iput p1, p0, Lcom/android/settings/utils/b$2;->e:I

    const-wide/16 p1, 0xbb8

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x4

    .line 75
    iput p1, p0, Lcom/android/settings/utils/b$2;->a:I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/utils/b$2;->b:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/utils/b$2;->b:Lcolor/support/v7/app/AlertDialog;

    iget v1, p0, Lcom/android/settings/utils/b$2;->c:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget v1, p0, Lcom/android/settings/utils/b$2;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/utils/b$2;->f:Lcom/android/settings/utils/b;

    iget-object v1, v1, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    const v2, 0x7f0600d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 79
    iget-object p1, p0, Lcom/android/settings/utils/b$2;->b:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget p1, p0, Lcom/android/settings/utils/b$2;->a:I

    const/4 p2, 0x1

    if-lez p1, :cond_0

    sub-int/2addr p1, p2

    .line 81
    iput p1, p0, Lcom/android/settings/utils/b$2;->a:I

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/utils/b$2;->b:Lcolor/support/v7/app/AlertDialog;

    iget v0, p0, Lcom/android/settings/utils/b$2;->c:I

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/utils/b$2;->f:Lcom/android/settings/utils/b;

    iget-object v0, v0, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/utils/b$2;->d:I

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/utils/b$2;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
