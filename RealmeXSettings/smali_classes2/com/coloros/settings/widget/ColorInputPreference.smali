.class public Lcom/coloros/settings/widget/ColorInputPreference;
.super Landroidx/preference/Preference;
.source "ColorInputPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/ColorInputPreference$b;,
        Lcom/coloros/settings/widget/ColorInputPreference$a;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/ColorEditText;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Lcom/coloros/settings/widget/ColorInputPreference$a;

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

    const v0, 0x7f040149

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->g:Landroid/content/Context;

    .line 83
    new-instance p4, Lcom/color/support/widget/ColorEditText;

    invoke-direct {p4, p1, p2}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 84
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const v0, 0x1020009

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setId(I)V

    .line 85
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p4}, Lcom/color/support/widget/ColorEditText;->forceFinishDetach()V

    .line 87
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setSingleLine(Z)V

    .line 88
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v1}, Lcom/color/support/widget/ColorEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    sget-object p4, Lcom/android/settings/g$a;->ColorInputPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 92
    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 93
    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->f:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p4, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    .line 95
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    sget-object v2, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x21

    .line 99
    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 101
    iget-object p4, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v3, Lcom/coloros/settings/widget/ColorInputPreference$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/widget/ColorInputPreference$1;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p4, v3, v4, v5}, Lcom/color/support/widget/ColorEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    sget-object p4, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->i:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget-boolean p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->i:Z

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setTextAlignment(I)V

    return-void

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800013

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setTextAlignment(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/widget/ColorInputPreference;Lcom/coloros/settings/widget/ColorInputPreference$a;)Lcom/coloros/settings/widget/ColorInputPreference$a;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->d:Lcom/coloros/settings/widget/ColorInputPreference$a;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/widget/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/widget/ColorInputPreference;ZZ)V
    .locals 2

    .line 1367
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 1370
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->i:Z

    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 1371
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p0, 0x0

    .line 1375
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1377
    :cond_2
    iget-object p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method static synthetic a(C)Z
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/widget/ColorInputPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/widget/ColorInputPreference;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/coloros/settings/widget/ColorInputPreference$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->d:Lcom/coloros/settings/widget/ColorInputPreference$a;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/widget/ColorInputPreference;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->j:Z

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->notifyChanged()V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->shouldDisableDependents()Z

    move-result v0

    .line 147
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->persistString(Ljava/lang/String;)Z

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_4

    .line 153
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->notifyDependencyChange(Z)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 199
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 200
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->h:Landroid/view/View;

    const-string v0, "com.android.internal.R.id.edittext_container"

    .line 201
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const v1, 0x1020009

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 204
    iget-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 210
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    const v0, 0x1020019

    .line 214
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 218
    :cond_2
    iget-boolean v1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/16 p1, 0x8

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x1020016

    .line 222
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 223
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v2, p1}, Lcom/color/support/widget/ColorEditText;->setTextSize(IF)V

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/coloros/settings/widget/ColorInputPreference$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/widget/ColorInputPreference$2;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 237
    iput-boolean v2, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    .line 1126
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->k:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz p1, :cond_5

    .line 1127
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_1

    .line 1129
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    .line 241
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/settings/widget/ColorInputPreference$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference$3;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->post(Ljava/lang/Runnable;)Z

    .line 1158
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->f:Ljava/lang/CharSequence;

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    :cond_7
    iget-boolean p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->c:Z

    if-eqz p1, :cond_8

    .line 273
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    goto :goto_2

    .line 275
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 277
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 279
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    new-instance v0, Lcom/coloros/settings/widget/ColorInputPreference$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/widget/ColorInputPreference$4;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/widget/ColorInputPreference$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/ColorInputPreference$b;

    .line 404
    invoke-virtual {p1}, Lcom/coloros/settings/widget/ColorInputPreference$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget-object p1, p1, Lcom/coloros/settings/widget/ColorInputPreference$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 399
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 383
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorInputPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 388
    :cond_0
    new-instance v1, Lcom/coloros/settings/widget/ColorInputPreference$b;

    invoke-direct {v1, v0}, Lcom/coloros/settings/widget/ColorInputPreference$b;-><init>(Landroid/os/Parcelable;)V

    .line 389
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coloros/settings/widget/ColorInputPreference$b;->a:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .line 189
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
