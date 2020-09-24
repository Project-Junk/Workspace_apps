.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SeekBarPreference$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/SeekBar;

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field protected i:I

.field protected j:I

.field public k:I

.field protected l:Z

.field protected m:Z

.field protected n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "com.android.internal.R.attr.seekBarPreferenceStyle"

    .line 84
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0404d5

    .line 82
    invoke-static {p1, v1, v0}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->a:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->c:I

    const-string v0, "com.android.internal.R.styleable.ProgressBar"

    .line 62
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 61
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "com.android.internal.R.styleable.ProgressBar_max"

    .line 63
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    const-string v1, "com.android.internal.R.styleable.ProgressBar_min"

    .line 64
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->e(I)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "com.android.internal.R.styleable.SeekBarPreference"

    .line 68
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 67
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "com.android.internal.R.styleable.SeekBarPreference_layout"

    .line 70
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "com.android.internal.R.layout.preference_widget_seekbar"

    .line 71
    invoke-static {p3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/SeekBarPreference;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->c:I

    return p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->n:Z

    return-void
.end method

.method private a(Landroid/widget/SeekBar;)V
    .locals 2

    .line 264
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 265
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    if-eq v0, v1, :cond_1

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->a(IZ)V

    return-void

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$YGxjfgvxtifinXBtlYMJO-6260Q(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(IZ)V
    .locals 1

    .line 240
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    if-eq p1, v0, :cond_2

    .line 247
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    if-eq p1, v0, :cond_0

    .line 194
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 200
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    if-eq p1, v0, :cond_0

    .line 201
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->a(IZ)V

    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->m:Z

    return-void
.end method

.method public final k()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    return v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a05db

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    const-string v0, "com.android.internal.R.id.seekbar"

    .line 118
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    instance-of v1, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v1, :cond_4

    .line 133
    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->a:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 135
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->n:Z

    if-eqz v0, :cond_5

    .line 136
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 137
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$YGxjfgvxtifinXBtlYMJO-6260Q;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$YGxjfgvxtifinXBtlYMJO-6260Q;-><init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->b:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 181
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.android.internal.R.id.seekbar"

    .line 185
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    return v1

    .line 189
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 276
    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->m:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->l:Z

    if-nez p2, :cond_1

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->a(Landroid/widget/SeekBar;)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 342
    :cond_0
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference$a;

    .line 343
    invoke-virtual {p1}, Lcom/android/settings/widget/SeekBarPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$a;->a:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    .line 345
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$a;->b:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    .line 346
    iget p1, p1, Lcom/android/settings/widget/SeekBarPreference$a;->c:I

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 319
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 326
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$a;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 327
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$a;->a:I

    .line 328
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->j:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$a;->b:I

    .line 329
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$a;->c:I

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 171
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    .line 1215
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;->a(IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->l:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->l:Z

    .line 289
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->i:I

    if-eq v0, v1, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->a(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
