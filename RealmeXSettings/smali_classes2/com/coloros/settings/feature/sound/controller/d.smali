.class public final Lcom/coloros/settings/feature/sound/controller/d;
.super Ljava/lang/Object;
.source "ColorRingVibrationUtils.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/ContentResolver;

.field private c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

.field private d:Z

.field private final e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/d$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/sound/controller/d$1;-><init>(Lcom/coloros/settings/feature/sound/controller/d;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    .line 62
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/d;->a:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/d;->b:Landroid/content/ContentResolver;

    .line 64
    iput-object p2, p0, Lcom/coloros/settings/feature/sound/controller/d;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/d;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setNumber(I)V

    return-void
.end method

.method private static a(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method private c()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->b:Landroid/content/ContentResolver;

    const-string v1, "ring_vibration_intensity"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/d;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/sound/controller/d;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setThumbIndex(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/d;->c()V

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/d;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->d:Z

    return-void
.end method

.method public final b()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->b:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    const/4 v2, -0x2

    const-string v3, "ring_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/d;->a:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/bp;->b(Landroid/content/Context;II)V

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/d;->d:Z

    return-void
.end method
