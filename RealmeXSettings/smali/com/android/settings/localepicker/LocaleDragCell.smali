.class Lcom/android/settings/localepicker/LocaleDragCell;
.super Landroid/widget/RelativeLayout;
.source "LocaleDragCell.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/CheckBox;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0370

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0364

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03f5

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0137

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    const v0, 0x7f0a0221

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->e:Landroid/widget/ImageView;

    return-void
.end method
