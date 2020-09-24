.class public final Lcom/coloros/settings/feature/sound/controller/e;
.super Ljava/lang/Object;
.source "ColorTouchVibrationUtils.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/ContentResolver;

.field private c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

.field private d:Z

.field private final e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/e$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/sound/controller/e$1;-><init>(Lcom/coloros/settings/feature/sound/controller/e;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/e;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/e;->b:Landroid/content/ContentResolver;

    .line 59
    iput-object p2, p0, Lcom/coloros/settings/feature/sound/controller/e;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/e;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setNumber(I)V

    return-void
.end method

.method private static a(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private c()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->b:Landroid/content/ContentResolver;

    const-string v1, "touch_vibration_intensity"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/e;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/sound/controller/e;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setThumbIndex(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/e;->c()V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/e;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->d:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/e;->d:Z

    return-void
.end method
