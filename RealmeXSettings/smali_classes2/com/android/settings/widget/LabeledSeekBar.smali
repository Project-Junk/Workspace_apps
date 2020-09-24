.class public Lcom/android/settings/widget/LabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LabeledSeekBar$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/customview/widget/ExploreByTouchHelper;

.field private b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private c:[Ljava/lang/String;

.field private final d:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "com.android.internal.R.attr.seekBarStyle"

    .line 54
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    new-instance p1, Lcom/android/settings/widget/LabeledSeekBar$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/LabeledSeekBar$1;-><init>(Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 64
    new-instance p1, Lcom/android/settings/widget/LabeledSeekBar$a;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/widget/LabeledSeekBar$a;-><init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 65
    iget-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/widget/LabeledSeekBar;I)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 1099
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->c:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->c:[Ljava/lang/String;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->a:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
