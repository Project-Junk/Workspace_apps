.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "TwoStateButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Z

.field public final b:Landroid/widget/Button;

.field public final c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04064c

    const v1, 0x101008e

    .line 42
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    .line 47
    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/android/settings/g$a;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x7f121621

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a0649

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    .line 60
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0648

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    .line 63
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->a:Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->a:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0649

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(Z)V

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
