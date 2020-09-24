.class public Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "ColorSeekBarPreference.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;


# instance fields
.field protected a:Lcom/color/support/widget/seekbar/ColorSeekBar;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:I

.field public e:I

.field public f:I

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->d:I

    const p1, 0x7f0d02c3

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 88
    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->n:Z

    return-void
.end method

.method private a(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 2

    .line 173
    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v0

    .line 174
    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->i:I

    if-eq v0, v1, :cond_1

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(IZ)V

    return-void

    .line 178
    :cond_0
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->i:I

    invoke-virtual {p1, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$7mK6dvooDYkk8muZfxC-TciO8po(Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 149
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->q:I

    .line 150
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 151
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->q:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05db

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/seekbar/ColorSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    if-nez v0, :cond_0

    const-string v0, "com.android.internal.R.id.seekbar"

    .line 68
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/seekbar/ColorSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {v0, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->j:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMax(I)V

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->i:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setEnabled(Z)V

    .line 78
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->n:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorSeekBarPreference$7mK6dvooDYkk8muZfxC-TciO8po;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorSeekBarPreference$7mK6dvooDYkk8muZfxC-TciO8po;-><init>(Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    new-instance v1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v0, 0x7f0a05da

    .line 106
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->g:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 108
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->q:I

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    const v0, 0x7f0a0161

    .line 115
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->h:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->h:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 117
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->d:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v0, 0x7f0a0396

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 123
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->e:I

    if-eqz v3, :cond_6

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_1
    const v0, 0x7f0a0579

    .line 131
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 134
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->f:I

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 138
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 185
    iget-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->m:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->l:Z

    if-nez p2, :cond_1

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->l:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->l:Z

    .line 198
    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->i:I

    if-eq v0, v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    :cond_0
    return-void
.end method
