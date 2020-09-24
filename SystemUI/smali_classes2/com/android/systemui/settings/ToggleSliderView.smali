.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# instance fields
.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDownX:F

.field private mDownY:F

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mProgress:I

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 196
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 269
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$3;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    const v0, 0x7f0d020a

    .line 63
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    sget-object v0, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f0a05a7

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    const p2, 0x7f0a0114

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const p2, 0x7f0a053c

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 80
    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a053b

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 86
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0a031e

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    .line 89
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSliderView;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDownY:F

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/settings/ToggleSliderView;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDownY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mProgress:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/settings/ToggleSliderView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleSliderView;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDownX:F

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/ToggleSliderView;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDownX:F

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .line 262
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 264
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    .line 264
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    .line 98
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p1, :cond_1

    .line 101
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object p1, p1, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setSoundEffectsEnabled(Z)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_1
    return-void
.end method

.method public setMirrorChecked(Z)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method
