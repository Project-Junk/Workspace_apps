.class public Lcom/google/android/setupdesign/b/b;
.super Ljava/lang/Object;
.source "IconMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final b:I

.field private final c:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 62
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/google/android/setupdesign/b/b;->b:I

    .line 63
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/b/b;->c:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 65
    :cond_0
    iput v1, p0, Lcom/google/android/setupdesign/b/b;->b:I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/google/android/setupdesign/b/b;->c:Landroid/widget/ImageView$ScaleType;

    .line 69
    :goto_0
    sget-object v0, Lcom/google/android/setupdesign/b$g;->SudIconMixin:[I

    .line 70
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lcom/google/android/setupdesign/b$g;->SudIconMixin_android_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1138
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 1139
    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_2
    sget p2, Lcom/google/android/setupdesign/b$g;->SudIconMixin_sudUpscaleIcon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 1154
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 1156
    invoke-virtual {p3}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v2

    goto :goto_2

    .line 1158
    :cond_3
    invoke-virtual {p3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/setupdesign/b$c;->sud_glif_icon_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_2
    if-eqz p2, :cond_4

    goto :goto_3

    .line 1160
    :cond_4
    iget v2, p0, Lcom/google/android/setupdesign/b/b;->b:I

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1161
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_5

    .line 1162
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/google/android/setupdesign/b/b;->c:Landroid/widget/ImageView$ScaleType;

    :goto_4
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    :cond_6
    sget p2, Lcom/google/android/setupdesign/b$g;->SudIconMixin_sudIconTint:I

    .line 81
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_7

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 1170
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/b$d;->sud_layout_icon:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
