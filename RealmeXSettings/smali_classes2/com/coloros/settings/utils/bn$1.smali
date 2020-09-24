.class final Lcom/coloros/settings/utils/bn$1;
.super Ljava/lang/Object;
.source "VerificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/bn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/color/support/widget/ColorEditText;

.field final synthetic c:Lcom/coloros/settings/utils/bn;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/bn;Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/coloros/settings/utils/bn$1;->c:Lcom/coloros/settings/utils/bn;

    iput-object p2, p0, Lcom/coloros/settings/utils/bn$1;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/coloros/settings/utils/bn$1;->b:Lcom/color/support/widget/ColorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$1;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/coloros/settings/utils/bn$1;->b:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$1;->c:Lcom/coloros/settings/utils/bn;

    .line 1032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$1;->c:Lcom/coloros/settings/utils/bn;

    .line 2032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    .line 101
    invoke-interface {p1}, Lcom/coloros/settings/utils/bn$a;->b()V

    :cond_0
    return-void
.end method
