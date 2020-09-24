.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$2;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/color/support/widget/ColorEditText;

.field final synthetic c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->b:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 507
    iget-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->b:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 508
    iget-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;->c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 509
    invoke-interface {p2, v1, v0, v0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
