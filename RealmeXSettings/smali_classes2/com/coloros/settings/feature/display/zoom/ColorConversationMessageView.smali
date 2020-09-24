.class public Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ColorConversationMessageView.java"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:I

.field private final e:I

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    sget-object p3, Lcom/android/settings/g$a;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x3

    .line 73
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    const/4 p4, 0x4

    .line 74
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->b:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->c:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 76
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->d:I

    .line 77
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->e:I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f130031

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0124

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07040e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->j:I

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070408

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->k:I

    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03df

    .line 90
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03e8

    .line 91
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->g:Landroid/view/ViewGroup;

    const v0, 0x7f0a03e7

    .line 92
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->h:Landroid/widget/TextView;

    const v0, 0x7f0a03e6

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->i:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a(Landroid/view/View;)Z

    move-result p1

    .line 126
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p4, p2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingLeft()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p2, p5

    .line 128
    iget-object p5, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p5

    .line 133
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingLeft()I

    move-result p1

    .line 139
    iget p4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->j:I

    add-int/2addr p4, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingLeft()I

    move-result p4

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    .line 147
    iget p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->j:I

    sub-int/2addr p4, p1

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    add-int/2addr p2, p4

    add-int/2addr p5, p3

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070408

    .line 1166
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f07040f

    .line 1168
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070410

    .line 1170
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f07040d

    .line 1172
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1177
    iget-boolean v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    if-eqz v4, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    move v7, v1

    move v1, v0

    move v0, v7

    .line 1186
    :goto_0
    iget-boolean v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    if-eqz v4, :cond_1

    const v4, 0x800013

    goto :goto_1

    :cond_1
    const v4, 0x800015

    :goto_1
    const v5, 0x7f070409

    .line 1188
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 1193
    iget-boolean v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    if-eqz v5, :cond_2

    const v5, 0x7f0809c6

    goto :goto_2

    :cond_2
    const v5, 0x7f0809c8

    .line 1197
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getContext()Landroid/content/Context;

    .line 1203
    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1205
    invoke-static {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 1207
    iget-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->g:Landroid/view/ViewGroup;

    add-int/2addr v2, v6

    invoke-virtual {v5, v1, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    .line 1211
    :cond_3
    iget-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->g:Landroid/view/ViewGroup;

    add-int/2addr v2, v6

    invoke-virtual {v5, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1217
    :goto_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1, v6}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->setPadding(IIII)V

    .line 1218
    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1224
    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->a:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->mContext:Landroid/content/Context;

    const v0, 0x7f06030a

    .line 1225
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->mContext:Landroid/content/Context;

    const v0, 0x7f06030e

    .line 1226
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 1227
    :goto_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->h:Landroid/widget/TextView;

    const v2, 0x7f070017

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1228
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1229
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 104
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 110
    iget v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->k:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, -0x80000000

    .line 111
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 116
    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/display/zoom/ColorConversationMessageView;->setMeasuredDimension(II)V

    return-void
.end method
