.class public Lcom/coloros/systemui/notification/view/RemoteEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "RemoteEditText.java"


# instance fields
.field final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 31
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/coloros/systemui/notification/view/RemoteEditText$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/view/RemoteEditText$1;-><init>(Lcom/coloros/systemui/notification/view/RemoteEditText;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public setInnerFocusable(Z)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/RemoteEditText;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/RemoteEditText;->setCursorVisible(Z)V

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public showSoftInputFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->setInnerFocusable(Z)V

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/view/RemoteEditText$2;-><init>(Lcom/coloros/systemui/notification/view/RemoteEditText;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
