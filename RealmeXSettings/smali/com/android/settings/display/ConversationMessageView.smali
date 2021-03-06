.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:I

.field private final f:I

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    sget-object p3, Lcom/android/settings/g$a;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x3

    .line 72
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    const/4 p4, 0x4

    .line 73
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->b:Ljava/lang/CharSequence;

    const/4 p4, 0x5

    .line 74
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->c:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->d:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 76
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/display/ConversationMessageView;->e:I

    .line 77
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->f:I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0125

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0124

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 260
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .line 167
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
    .locals 4

    const v0, 0x7f0a03df

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03e8

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->h:Landroid/view/ViewGroup;

    const v0, 0x7f0a03e7

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->i:Landroid/widget/TextView;

    const v0, 0x7f0a03e6

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->j:Landroid/widget/TextView;

    const v0, 0x7f0a01a5

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    .line 1171
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1177
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/display/ConversationMessageView;->f:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/display/ConversationMessageView;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 130
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->a(Landroid/view/View;)Z

    move-result p1

    .line 132
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 133
    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 136
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 142
    iget-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p1

    :goto_0
    add-int p4, p1, p3

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int p1, p4, p3

    sub-int p4, p1, p2

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    add-int/2addr p3, p1

    add-int/2addr p5, v0

    invoke-virtual {v2, p1, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    add-int/2addr p2, p4

    add-int/2addr v1, v0

    invoke-virtual {p1, p4, v0, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1182
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070408

    .line 1184
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f07040f

    .line 1186
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070411

    .line 1188
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f07040d

    .line 1190
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1195
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v5, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1204
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v5, :cond_1

    const v5, 0x800013

    goto :goto_1

    :cond_1
    const v5, 0x800015

    :goto_1
    const v6, 0x7f07040c

    .line 1206
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f07040b

    .line 1208
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 1212
    iget-boolean v7, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v7, :cond_2

    const v7, 0x7f0808bb

    goto :goto_2

    :cond_2
    const v7, 0x7f0808bc

    .line 1214
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v8, :cond_3

    const v8, 0x7f060234

    goto :goto_3

    :cond_3
    const v8, 0x7f060235

    .line 1216
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1219
    invoke-virtual {v9, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1220
    invoke-virtual {v9, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 1218
    invoke-static {v9, v7, v8}, Lcom/android/settings/display/ConversationMessageView;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1221
    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->h:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1225
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->h:Landroid/view/ViewGroup;

    add-int/2addr v3, p2

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 1229
    :cond_4
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->h:Landroid/view/ViewGroup;

    add-int/2addr v3, p2

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1235
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v6, v1, v2}, Lcom/android/settings/display/ConversationMessageView;->setPadding(IIII)V

    .line 1236
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1242
    iget-boolean p2, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz p2, :cond_5

    const p2, 0x7f06023a

    goto :goto_5

    :cond_5
    const p2, 0x7f06023b

    .line 1244
    :goto_5
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->a:Z

    if-eqz v1, :cond_6

    const v1, 0x7f060396

    goto :goto_6

    :cond_6
    const v1, 0x7f060397

    .line 1246
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 1248
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1249
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1250
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->j:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 100
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 101
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    .line 105
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 104
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, -0x80000000

    .line 117
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->k:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->g:Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 122
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/ConversationMessageView;->setMeasuredDimension(II)V

    return-void
.end method
