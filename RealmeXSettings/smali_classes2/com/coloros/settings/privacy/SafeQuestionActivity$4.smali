.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$4;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorEditText;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:I

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

.field final synthetic f:Lcolor/support/v7/app/AlertDialog;

.field final synthetic g:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/TextView;ILandroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->a:Lcom/color/support/widget/ColorEditText;

    iput-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    iput p3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->c:I

    iput-object p4, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->e:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    iput-object p6, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->f:Lcolor/support/v7/app/AlertDialog;

    iput-object p7, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 535
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 538
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    const v0, 0x7f1210cf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 542
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    const v0, 0x7f1208a9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 547
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_2

    .line 548
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    const v0, 0x7f120f38

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 552
    :cond_2
    iget v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    .line 553
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    const-string v4, "1.0"

    .line 554
    invoke-virtual {v0, v2, v4, p1}, Lcom/coloros/settings/privacy/a/g;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 556
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->b:Landroid/widget/TextView;

    const v0, 0x7f1210d2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 560
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->e:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz v2, :cond_4

    .line 561
    iget-object v4, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-interface {v2, v3, p1, v0, v4}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    .line 563
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 568
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->e:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 569
    iget-object v2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    .line 571
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
