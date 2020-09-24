.class public Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardPreviewContainer.java"


# instance fields
.field private mBlackBarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->mBlackBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->mBlackBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 71
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->setPadding(IIII)V

    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
