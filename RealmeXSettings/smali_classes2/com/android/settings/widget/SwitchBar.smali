.class public Lcom/android/settings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchBar$b;,
        Lcom/android/settings/widget/SwitchBar$a;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field public a:Lcom/android/settings/widget/ToggleSwitch;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/SwitchBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/settingslib/core/instrumentation/d;

.field private final e:Landroid/text/style/TextAppearanceSpan;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private m:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Lcom/android/settingslib/g$a;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SwitchBar;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0405cb
        0x7f0405ca
        0x7f0405c9
        0x7f0405c8
        0x7f0405cc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    const/4 p3, 0x0

    .line 91
    iput-object p3, p0, Lcom/android/settings/widget/SwitchBar;->p:Lcom/android/settingslib/g$a;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d0361

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    .line 115
    sget-object p4, Lcom/android/settings/widget/SwitchBar;->b:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 117
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    const/4 p4, 0x2

    .line 118
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/widget/SwitchBar;->j:I

    const/4 p4, 0x3

    .line 119
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/widget/SwitchBar;->k:I

    const/4 p4, 0x4

    .line 120
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 121
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0a06ba

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    .line 124
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v3, 0x7f130373

    invoke-direct {p2, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar;->e:Landroid/text/style/TextAppearanceSpan;

    .line 125
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const p2, 0x7f0a06bb

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/ToggleSwitch;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    .line 131
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 133
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/ToggleSwitch;->setFocusable(Z)V

    .line 134
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/ToggleSwitch;->setClickable(Z)V

    .line 136
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p2}, Lcom/android/settings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 138
    iget p2, p0, Lcom/android/settings/widget/SwitchBar;->j:I

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    const p2, 0x7f12163e

    const p3, 0x7f12163c

    .line 140
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 142
    new-instance p2, Lcom/android/settings/widget/-$$Lambda$SwitchBar$QxoK5hxhh2SqBcKvn031OLji7fE;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/-$$Lambda$SwitchBar$QxoK5hxhh2SqBcKvn031OLji7fE;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    const p2, 0x7f0a056b

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    .line 146
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object p2, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    new-instance p3, Lcom/android/settings/widget/SwitchBar$1;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/widget/SwitchBar$1;-><init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x8

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 167
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->d:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method private synthetic a(Landroid/widget/Switch;Z)V
    .locals 0

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar$a;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings/widget/SwitchBar$a;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/SwitchBar;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/widget/SwitchBar;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/widget/SwitchBar;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/core/instrumentation/d;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->d:Lcom/android/settingslib/core/instrumentation/d;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 202
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->e:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/g$a;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->p:Lcom/android/settingslib/g$a;

    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$QxoK5hxhh2SqBcKvn031OLji7fE(Lcom/android/settings/widget/SwitchBar;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SwitchBar;->a(Landroid/widget/Switch;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/android/settings/widget/SwitchBar;->l:I

    .line 188
    iput p2, p0, Lcom/android/settings/widget/SwitchBar;->m:I

    .line 1220
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public final a(Lcom/android/settings/widget/SwitchBar$a;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 274
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/settings/widget/SwitchBar$a;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot remove OnSwitchChangeListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getDelegatingView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method public final getSwitch()Lcom/android/settings/widget/ToggleSwitch;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 293
    iget-boolean p1, p0, Lcom/android/settings/widget/SwitchBar;->n:Z

    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->d:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/widget/SwitchBar;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/switch_bar"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    :cond_0
    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lcom/android/settings/widget/SwitchBar;->n:Z

    .line 302
    invoke-direct {p0, p2}, Lcom/android/settings/widget/SwitchBar;->a(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 375
    check-cast p1, Lcom/android/settings/widget/SwitchBar$b;

    .line 377
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, p1, Lcom/android/settings/widget/SwitchBar$b;->a:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 380
    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar$b;->a:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 381
    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar$b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean p1, p1, Lcom/android/settings/widget/SwitchBar$b;->b:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 365
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/android/settings/widget/SwitchBar$b;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SwitchBar$b;-><init>(Landroid/os/Parcelable;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/widget/SwitchBar$b;->a:Z

    .line 369
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/widget/SwitchBar$b;->b:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/g$a;)V
    .locals 3

    .line 244
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->p:Lcom/android/settingslib/g$a;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 246
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->o:Z

    .line 248
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 250
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void

    .line 255
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/widget/SwitchBar;->o:Z

    .line 256
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->o:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    return-void

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->q:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->i:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->c()V

    return-void
.end method

.method public setTextViewLabelAndBackground(Z)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/SwitchBar;->l:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SwitchBar;->m:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SwitchBar;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 182
    iget p1, p0, Lcom/android/settings/widget/SwitchBar;->k:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/settings/widget/SwitchBar;->j:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->c()V

    return-void
.end method
