.class public Lcom/coloros/settings/widget/EmptyListView;
.super Landroid/widget/LinearLayout;
.source "EmptyListView.java"


# instance fields
.field private a:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private b:Landroid/widget/TextView;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/EmptyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/EmptyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 1057
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/EmptyListView;->setOrientation(I)V

    const/16 p1, 0x11

    .line 1058
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/EmptyListView;->setGravity(I)V

    .line 1059
    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1060
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/coloros/settings/widget/EmptyListView;->c:F

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)V
    .locals 4

    .line 1093
    iget v0, p0, Lcom/coloros/settings/widget/EmptyListView;->c:F

    const/high16 v1, 0x42dc0000    # 110.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1094
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1095
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1096
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    invoke-virtual {p0, v2}, Lcom/coloros/settings/widget/EmptyListView;->addView(Landroid/view/View;)V

    .line 1098
    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1099
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2084
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    .line 2085
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2087
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06030d

    invoke-virtual {p2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2088
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2089
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/EmptyListView;->addView(Landroid/view/View;)V

    .line 3076
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3077
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/EmptyListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3078
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3079
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/EmptyListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 134
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/widget/EmptyListView;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/widget/EmptyListView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
