.class public Lcom/coloros/settings/widget/ColorIconJumpView;
.super Landroid/widget/RelativeLayout;
.source "ColorIconJumpView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/ColorIconJumpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/ColorIconJumpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object p3, Lcom/android/settings/g$a;->ColorIconJumpView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->b:Z

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->a:Z

    const/4 v0, 0x3

    .line 56
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->e:Z

    .line 57
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f130031

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0090

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private setIconSupportRtl(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorIconJumpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080410

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/coloros/settings/utils/ai;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 98
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0357

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/ColorIconJumpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0742

    .line 66
    invoke-virtual {p0, v1}, Lcom/coloros/settings/widget/ColorIconJumpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->f:Landroid/widget/TextView;

    const v1, 0x7f0a034e

    .line 67
    invoke-virtual {p0, v1}, Lcom/coloros/settings/widget/ColorIconJumpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    invoke-direct {p0, v1}, Lcom/coloros/settings/widget/ColorIconJumpView;->setIconSupportRtl(Landroid/view/View;)V

    const v2, 0x7f0a078b

    .line 69
    invoke-virtual {p0, v2}, Lcom/coloros/settings/widget/ColorIconJumpView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0788

    .line 70
    invoke-virtual {p0, v3}, Lcom/coloros/settings/widget/ColorIconJumpView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-boolean v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->a:Z

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-boolean v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->e:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/widget/ColorIconJumpView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
