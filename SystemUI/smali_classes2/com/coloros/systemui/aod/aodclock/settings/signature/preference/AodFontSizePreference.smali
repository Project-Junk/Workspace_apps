.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;
.super Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;
.source "AodFontSizePreference.java"


# instance fields
.field private mCurrentFontSize:I

.field private mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->putValue(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const p1, 0x7f0d0039

    .line 52
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->setLayoutResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewSignatureTextSizeIndex()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mCurrentFontSize:I

    return-void
.end method

.method private putValue(I)V
    .locals 1

    .line 107
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mCurrentFontSize:I

    .line 108
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setPreviewSignatureTextSizeIndex(I)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->notifyDataChange()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$AodFontSizePreference(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 83
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v6, v2

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    :cond_1
    move v6, v1

    .line 90
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    const/4 v0, 0x1

    shr-int/2addr v1, v0

    int-to-float v7, v1

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    move v5, v9

    .line 91
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-ne v9, v0, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 59
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMax(I)V

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mSeekBar:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->mCurrentFontSize:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setProgress(I)V

    .line 80
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/-$$Lambda$AodFontSizePreference$_JjL_p4DcwB20RCD6LRt3iS-6As;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/-$$Lambda$AodFontSizePreference$_JjL_p4DcwB20RCD6LRt3iS-6As;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
