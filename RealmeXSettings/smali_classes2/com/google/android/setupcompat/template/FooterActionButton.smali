.class public Lcom/google/android/setupcompat/template/FooterActionButton;
.super Landroid/widget/Button;
.source "FooterActionButton.java"


# instance fields
.field private a:Lcom/google/android/setupcompat/template/FooterButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->a:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    .line 1141
    iget-boolean v0, v0, Lcom/google/android/setupcompat/template/FooterButton;->c:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->a:Lcom/google/android/setupcompat/template/FooterButton;

    .line 1158
    iget v0, v0, Lcom/google/android/setupcompat/template/FooterButton;->d:I

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->a:Lcom/google/android/setupcompat/template/FooterButton;

    .line 2103
    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterButton;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->a:Lcom/google/android/setupcompat/template/FooterButton;

    return-void
.end method
