.class public Lcom/color/support/preference/ColorSlideSelectPreference;
.super Lcom/color/support/preference/ColorPreference;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field private c:I

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->colorSlideSelectPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorSlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorSlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->c:I

    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->a:Landroid/content/Context;

    sget-object v0, Lcolor/support/v7/a/a$n;->ColorSlideSelectPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->ColorSlideSelectPreference_color_select_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcolor/support/v7/a/a$g;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcolor/support/v7/a/a$g;->color_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->c:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    :goto_0
    :pswitch_2
    sget v0, Lcolor/support/v7/a/a$g;->color_statusText_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
