.class public Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 523
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 525
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 0

    .line 515
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return-void
.end method

.method private defocusIfNeeded(Z)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 534
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_2

    .line 535
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    :cond_2
    return-void

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v1, :cond_4

    .line 543
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$600(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V

    .line 545
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 571
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 572
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 573
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBottom:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mTop:I

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$700(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 615
    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->clearComposingText()V

    .line 645
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSelection(I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 620
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 629
    new-instance v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    const/4 p2, 0x1

    .line 562
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 564
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$700(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 565
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setDirectReplying(Z)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 587
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 602
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 604
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 606
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 593
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return p1

    .line 596
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 551
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 554
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestScrollTo()Z

    move-result p0

    return p0
.end method

.method setInnerFocusable(Z)V
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusable(Z)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setCursorVisible(Z)V

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 656
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
