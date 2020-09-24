.class public Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;
.super Landroid/widget/FrameLayout;
.source "KeyguardFaceFillLightView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFaceFillLightView"


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDismiss:Landroid/widget/TextView;

.field private mLanguageTags:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    .line 21
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mLanguageTags:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateLocale()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0300

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mTitle:Landroid/widget/TextView;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContent:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f0a02fe

    .line 56
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContent:Landroid/widget/TextView;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mDismiss:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x7f0a02ff

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mDismiss:Landroid/widget/TextView;

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mDismiss:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f11040d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mLanguageTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->mLanguageTags:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->updateLocale()V

    :cond_1
    :goto_0
    return-void
.end method
