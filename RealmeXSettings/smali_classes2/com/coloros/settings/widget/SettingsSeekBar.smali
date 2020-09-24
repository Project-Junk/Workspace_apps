.class public Lcom/coloros/settings/widget/SettingsSeekBar;
.super Lcom/color/support/widget/seekbar/ColorSeekBar;
.source "SettingsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/SettingsSeekBar$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/coloros/settings/widget/SettingsSeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->a:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 99
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    div-int/lit8 p0, p0, 0x64

    return p0

    :cond_0
    div-int/lit8 p0, p0, 0x64

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->a:Z

    goto :goto_0

    .line 58
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->a:Z

    .line 71
    :goto_0
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    mul-int/lit8 p1, p1, 0x64

    .line 81
    :try_start_0
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnTouchEndListenr(Lcom/coloros/settings/widget/SettingsSeekBar$a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/widget/SettingsSeekBar;->b:Lcom/coloros/settings/widget/SettingsSeekBar$a;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0

    monitor-enter p0

    mul-int/lit8 p1, p1, 0x64

    .line 87
    :try_start_0
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setProgress$2563266(I)V
    .locals 0

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSeekBarProgress(I)V
    .locals 0

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
