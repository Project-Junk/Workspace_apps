.class public Landroidx/appcompat/widget/f;
.super Landroid/widget/Button;

# interfaces
.implements Landroidx/core/f/s;
.implements Landroidx/core/widget/b;


# instance fields
.field private final a:Landroidx/appcompat/widget/e;

.field private final b:Landroidx/appcompat/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/a$a;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/as;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    iget-object p1, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/x;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    iget-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/x;->a(Landroid/util/AttributeSet;I)V

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->b()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->h()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->g()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->f()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->i()[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public getAutoSizeTextType()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->e()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/x;->a(ZIIII)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroidx/appcompat/widget/f;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1}, Landroidx/appcompat/widget/x;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->c()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/x;->a(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/x;->a([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/x;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/x;->a(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/x;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/x;->a(IF)V

    :cond_1
    :goto_0
    return-void
.end method
