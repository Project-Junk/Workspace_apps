.class final Lcom/coloros/settings/utils/bn$3;
.super Ljava/lang/Object;
.source "VerificationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/bn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorEditText;

.field final synthetic b:Lcom/coloros/settings/utils/VerificationView;

.field final synthetic c:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic d:Lcom/coloros/settings/utils/bn;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/bn;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/utils/VerificationView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    iput-object p2, p0, Lcom/coloros/settings/utils/bn$3;->a:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/utils/bn$3;->b:Lcom/coloros/settings/utils/VerificationView;

    iput-object p4, p0, Lcom/coloros/settings/utils/bn$3;->c:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/utils/bn$3;->b:Lcom/coloros/settings/utils/VerificationView;

    .line 130
    invoke-virtual {v1}, Lcom/coloros/settings/utils/VerificationView;->getVerificationStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    .line 1032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    .line 2032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    .line 132
    invoke-interface {p1}, Lcom/coloros/settings/utils/bn$a;->a()V

    .line 133
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    .line 3032
    iput-boolean v0, p1, Lcom/coloros/settings/utils/bn;->c:Z

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/coloros/settings/utils/bn$3;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    .line 4032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    .line 136
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->d:Lcom/coloros/settings/utils/bn;

    .line 5032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    const v1, 0x7f121869

    .line 138
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$3;->a:Lcom/color/support/widget/ColorEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
