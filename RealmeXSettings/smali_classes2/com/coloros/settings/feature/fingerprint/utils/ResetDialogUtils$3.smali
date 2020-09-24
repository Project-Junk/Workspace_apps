.class final Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;
.super Ljava/lang/Object;
.source "ResetDialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils;->showInputDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)Lcolor/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$alertDailog:Lcolor/support/v7/app/AlertDialog;

.field final synthetic val$editText:Lcom/color/support/widget/ColorEditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

.field final synthetic val$message:Landroid/widget/TextView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/TextView;ILandroid/app/Activity;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;Landroid/view/inputmethod/InputMethodManager;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$editText:Lcom/color/support/widget/ColorEditText;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$type:I

    iput-object p4, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    iput-object p6, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p7, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$alertDailog:Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$editText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    const v0, 0x7f1210cf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    const v0, 0x7f1210d1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_2

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    const v0, 0x7f120f38

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 127
    :cond_2
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    .line 128
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;B)V

    const/4 v2, 0x4

    const-string v4, "1.0"

    .line 129
    invoke-virtual {v0, v2, v4, p1}, Lcom/coloros/settings/privacy/a/g;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$message:Landroid/widget/TextView;

    const v0, 0x7f1210d2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    if-eqz v2, :cond_4

    .line 136
    invoke-interface {v2, v3, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;->onClickListener(ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$editText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$alertDailog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void

    :cond_5
    if-ne v0, v3, :cond_6

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v0, v2, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;IZ)V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$editText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 147
    invoke-interface {v0, v3, p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;->onClickListener(ZLjava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;->val$alertDailog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
