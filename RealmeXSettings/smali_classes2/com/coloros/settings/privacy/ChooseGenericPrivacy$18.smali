.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorEditText;

.field final synthetic b:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

.field final synthetic d:Lcolor/support/v7/app/AlertDialog;

.field final synthetic e:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Landroid/view/inputmethod/InputMethodManager;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->e:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->a:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->b:Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    iput-object p5, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1032
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1034
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1035
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->c:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1036
    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    .line 1038
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method