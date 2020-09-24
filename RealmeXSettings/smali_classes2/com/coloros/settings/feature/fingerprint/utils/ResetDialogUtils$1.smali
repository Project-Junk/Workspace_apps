.class final Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;
.super Ljava/lang/Object;
.source "ResetDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$editText:Lcom/color/support/widget/ColorEditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;ILandroid/app/Activity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$editText:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    iput p4, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$type:I

    iput-object p5, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$editText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 81
    invoke-interface {p1, v0, p2, p2}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;->onClickListener(ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;->val$activity:Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method
