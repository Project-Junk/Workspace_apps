.class public Lcom/color/support/preference/ColorInputPreference;
.super Lcom/color/support/preference/ColorPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/ColorInputPreference$b;,
        Lcom/color/support/preference/ColorInputPreference$a;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/ColorEditText;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Lcom/color/support/preference/ColorInputPreference$a;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Context;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->colorInputPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->g:Landroid/content/Context;

    new-instance p4, Lcom/color/support/widget/ColorEditText;

    invoke-direct {p4, p1, p2}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const v0, 0x1020009

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setId(I)V

    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setBackgroundResource(I)V

    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p4}, Lcom/color/support/widget/ColorEditText;->a()V

    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Lcom/color/support/widget/ColorEditText;->setSingleLine(Z)V

    sget-object p4, Lcolor/support/v7/a/a$n;->ColorInputPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    sget v2, Lcolor/support/v7/a/a$n;->ColorInputPreference_colorContent:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    sget v2, Lcolor/support/v7/a/a$n;->ColorInputPreference_colorHint:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorInputPreference;->f:Ljava/lang/CharSequence;

    sget v2, Lcolor/support/v7/a/a$n;->ColorInputPreference_colorEllipsize:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/color/support/preference/ColorInputPreference;->k:Z

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcolor/support/v7/a/a$n;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcolor/support/v7/a/a$n;->TextView_android_selectAllOnFocus:I

    invoke-virtual {p4, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v3, Lcom/color/support/preference/ColorInputPreference$1;

    invoke-direct {v3, p0}, Lcom/color/support/preference/ColorInputPreference$1;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p4, v3, v4, v5}, Lcom/color/support/widget/ColorEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p4, Lcolor/support/v7/a/a$n;->Preference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->Preference_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->i:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 p1, 0x6

    :goto_0
    invoke-static {p0, p1}, Lcolor/support/b/a/a;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800013

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 p1, 0x5

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$a;)Lcom/color/support/preference/ColorInputPreference$a;
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->d:Lcom/color/support/preference/ColorInputPreference$a;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorInputPreference;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->i:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a(C)Z
    .locals 0

    if-eqz p1, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0xd

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-lt p1, p0, :cond_0

    const p0, 0xd7ff

    if-le p1, p0, :cond_3

    :cond_0
    const p0, 0xe000

    if-lt p1, p0, :cond_1

    const p0, 0xfffd

    if-le p1, p0, :cond_3

    :cond_1
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_2

    const p0, 0x10ffff

    if-le p1, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;C)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->a(C)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/color/support/preference/ColorInputPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/color/support/preference/ColorInputPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/color/support/preference/ColorInputPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/color/support/preference/ColorInputPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/preference/ColorInputPreference;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$a;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->d:Lcom/color/support/preference/ColorInputPreference$a;

    return-object p0
.end method

.method static synthetic e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic f(Lcom/color/support/preference/ColorInputPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/preference/ColorInputPreference;->j:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->notifyChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->shouldDisableDependents()Z

    move-result v0

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->persistString(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->notifyDependencyChange(Z)V

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcolor/support/v7/a/a$g;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->h:Landroid/view/View;

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->h:Landroid/view/View;

    sget v0, Lcolor/support/v7/a/a$g;->edittext_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->h:Landroid/view/View;

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/util/d;->a(Landroid/view/View;Z)V

    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->i:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->h:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v0, p1}, Lcom/color/support/widget/ColorEditText;->setTextSize(IF)V

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/color/support/preference/ColorInputPreference$2;

    invoke-direct {v1, p0}, Lcom/color/support/preference/ColorInputPreference$2;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->k:Z

    :cond_4
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->a()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/color/support/preference/ColorInputPreference$3;

    invoke-direct {v1, p0, p1}, Lcom/color/support/preference/ColorInputPreference$3;-><init>(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_6
    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->c:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    :goto_1
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v0, Lcom/color/support/preference/ColorInputPreference$4;

    invoke-direct {v0, p0}, Lcom/color/support/preference/ColorInputPreference$4;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/color/support/preference/ColorInputPreference$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/color/support/preference/ColorInputPreference$b;

    invoke-virtual {p1}, Lcom/color/support/preference/ColorInputPreference$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/color/support/preference/ColorPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/color/support/preference/ColorInputPreference$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Lcom/color/support/preference/ColorPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/color/support/preference/ColorInputPreference$b;

    invoke-direct {v1, v0}, Lcom/color/support/preference/ColorInputPreference$b;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/color/support/preference/ColorInputPreference$b;->a:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/color/support/preference/ColorPreference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
