.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# instance fields
.field private mVisibilityEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mVisibilityEnabled:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 82
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setVisibilityEnabled(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mVisibilityEnabled:Z

    return-void
.end method

.method public switchIndication(I)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .locals 1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
