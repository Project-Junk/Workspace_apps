.class public Lcom/color/support/widget/OppoCheckBox;
.super Landroidx/appcompat/widget/f;
.source "OppoCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/OppoCheckBox$SavedState;,
        Lcom/color/support/widget/OppoCheckBox$a;
    }
.end annotation


# static fields
.field private static final h:[I

.field private static final i:[I


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lcom/color/support/widget/OppoCheckBox$a;

.field private g:Lcom/color/support/widget/OppoCheckBox$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 56
    new-array v1, v0, [I

    sget v2, Lcolor/support/v7/appcompat/R$attr;->oppo_state_allSelect:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/color/support/widget/OppoCheckBox;->h:[I

    .line 59
    new-array v0, v0, [I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->oppo_state_partSelect:I

    aput v1, v0, v3

    sput-object v0, Lcom/color/support/widget/OppoCheckBox;->i:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 90
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/color/support/widget/OppoCheckBox;->setState(I)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 282
    invoke-super {p0}, Landroidx/appcompat/widget/f;->drawableStateChanged()V

    .line 284
    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 290
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 215
    invoke-super {p0}, Landroidx/appcompat/widget/f;->getCompoundPaddingLeft()I

    move-result v0

    .line 216
    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 227
    invoke-super {p0}, Landroidx/appcompat/widget/f;->getCompoundPaddingRight()I

    move-result v0

    .line 228
    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 105
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 301
    invoke-super {p0}, Landroidx/appcompat/widget/f;->jumpDrawablesToCurrentState()V

    .line 302
    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 267
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 271
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 272
    sget-object v0, Lcom/color/support/widget/OppoCheckBox;->i:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 275
    sget-object v0, Lcom/color/support/widget/OppoCheckBox;->h:[I

    invoke-static {p1, v0}, Lcom/color/support/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 239
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    .line 241
    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 245
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v2, v1

    .line 257
    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getWidth()I

    move-result v4

    sub-int v5, v4, v3

    .line 258
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getWidth()I

    move-result v3

    .line 260
    :cond_3
    invoke-virtual {v0, v5, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    const-class v0, Lcom/color/support/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 210
    const-class v0, Lcom/color/support/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 357
    check-cast p1, Lcom/color/support/widget/OppoCheckBox$SavedState;

    .line 359
    invoke-virtual {p1}, Lcom/color/support/widget/OppoCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/f;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 360
    iget p1, p1, Lcom/color/support/widget/OppoCheckBox$SavedState;->state:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoCheckBox;->setState(I)V

    .line 361
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    .line 346
    invoke-virtual {p0, v0}, Lcom/color/support/widget/OppoCheckBox;->setFreezesText(Z)V

    .line 347
    invoke-super {p0}, Landroidx/appcompat/widget/f;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/color/support/widget/OppoCheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/OppoCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 351
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getState()I

    move-result v0

    iput v0, v1, Lcom/color/support/widget/OppoCheckBox$SavedState;->state:I

    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->a()V

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/f;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 166
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->b:I

    if-ne p1, v0, :cond_0

    return-void

    .line 170
    :cond_0
    iput p1, p0, Lcom/color/support/widget/OppoCheckBox;->b:I

    const/4 p1, 0x0

    .line 173
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->b:I

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 188
    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/OppoCheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 191
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 192
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 193
    iput-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 195
    iget-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoCheckBox;->setMinHeight(I)V

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->refreshDrawableState()V

    return-void
.end method

.method public setOnStateChangeListener(Lcom/color/support/widget/OppoCheckBox$a;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->f:Lcom/color/support/widget/OppoCheckBox$a;

    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/color/support/widget/OppoCheckBox$a;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->g:Lcom/color/support/widget/OppoCheckBox$a;

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 117
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    if-eq v0, p1, :cond_3

    .line 118
    iput p1, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    .line 119
    invoke-virtual {p0}, Lcom/color/support/widget/OppoCheckBox;->refreshDrawableState()V

    .line 124
    iget-boolean p1, p0, Lcom/color/support/widget/OppoCheckBox;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/color/support/widget/OppoCheckBox;->c:Z

    .line 129
    iget-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->f:Lcom/color/support/widget/OppoCheckBox$a;

    if-eqz p1, :cond_1

    .line 130
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/OppoCheckBox$a;->a(Lcom/color/support/widget/OppoCheckBox;I)V

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/OppoCheckBox;->g:Lcom/color/support/widget/OppoCheckBox$a;

    if-eqz p1, :cond_2

    .line 133
    iget v0, p0, Lcom/color/support/widget/OppoCheckBox;->a:I

    invoke-interface {p1, p0, v0}, Lcom/color/support/widget/OppoCheckBox$a;->a(Lcom/color/support/widget/OppoCheckBox;I)V

    :cond_2
    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/color/support/widget/OppoCheckBox;->c:Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 296
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/OppoCheckBox;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
