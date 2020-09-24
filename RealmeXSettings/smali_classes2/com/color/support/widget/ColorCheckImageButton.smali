.class public Lcom/color/support/widget/ColorCheckImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ColorCheckImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/color/support/widget/ColorCheckImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorCheckImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorCheckImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/color/support/widget/ColorCheckImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/color/support/widget/ColorCheckImageButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/color/support/widget/ColorCheckImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcom/color/support/widget/ColorCheckImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 69
    invoke-static {p1, v0}, Lcom/color/support/widget/ColorCheckImageButton;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/color/support/widget/ColorCheckImageButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/color/support/widget/ColorCheckImageButton;->mChecked:Z

    .line 50
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCheckImageButton;->refreshDrawableState()V

    const/16 p1, 0x800

    .line 51
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCheckImageButton;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/color/support/widget/ColorCheckImageButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCheckImageButton;->setChecked(Z)V

    return-void
.end method
