.class public final Lcom/coloros/settings/feature/display/nightmode/a;
.super Ljava/lang/Object;
.source "ProEyesColorTemperatureController.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/nightmode/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:F

.field private static c:F


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/content/ContentResolver;

.field private f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/coloros/settings/feature/display/nightmode/a$a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OppoEyeprotect_level"

    .line 41
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/nightmode/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->k:Z

    .line 75
    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->d:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    .line 77
    iput-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMax(I)V

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbValues([F)V

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const p2, 0x3c54fdf4    # 0.013f

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbRatio(F)V

    .line 84
    new-instance p1, Lcom/coloros/settings/feature/display/nightmode/a$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/display/nightmode/a$a;-><init>(Lcom/coloros/settings/feature/display/nightmode/a;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->j:Lcom/coloros/settings/feature/display/nightmode/a$a;

    .line 1094
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    sget p2, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    const-string v0, "color_eyeprotect_start_level"

    const/4 v1, -0x2

    invoke-static {p1, v0, p2, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 1095
    sput p1, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    sput p1, Lcom/coloros/settings/feature/display/nightmode/a;->c:F

    .line 1096
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sMinEyeProtecteLevel"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorEyeProtect"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(I)F
    .locals 2

    .line 141
    sget v0, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private static a(F)I
    .locals 4

    .line 148
    sget v0, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    sub-float/2addr p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/a;->d()V

    return-void
.end method

.method private a(ZI)V
    .locals 5

    .line 183
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->k:Z

    const-string v1, "color_eyeprotect_level"

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    .line 1158
    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/a;->a(I)F

    move-result v3

    .line 1157
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1159
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    .line 1160
    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/a;->a(I)F

    move-result v3

    const-string v4, "color_eyeprotect_saved_level"

    .line 1159
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_1
    if-nez p1, :cond_3

    .line 1175
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2170
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    const v0, 0x3e2e147b    # 0.17f

    const-string v3, "color_display_level"

    .line 3165
    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2170
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    .line 194
    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/a;->a(I)F

    move-result p2

    const-string v0, "OppoEyeprotect_level"

    .line 193
    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/a;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/nightmode/a;)Landroid/content/ContentResolver;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic c()Landroid/net/Uri;
    .locals 1

    .line 31
    sget-object v0, Lcom/coloros/settings/feature/display/nightmode/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->e:Landroid/content/ContentResolver;

    sget v1, Lcom/coloros/settings/feature/display/nightmode/a;->c:F

    const-string v2, "color_eyeprotect_saved_level"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 128
    sget v1, Lcom/coloros/settings/feature/display/nightmode/a;->b:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/a;->a(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->j:Lcom/coloros/settings/feature/display/nightmode/a$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/nightmode/a$a;->a()V

    .line 106
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/a;->d()V

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->h:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->j:Lcom/coloros/settings/feature/display/nightmode/a$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/nightmode/a$a;->b()V

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V

    .line 119
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/a;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_1
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->h:Z

    return-void
.end method

.method public final onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V
    .locals 0

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->k:Z

    .line 205
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/nightmode/a;->a(ZI)V

    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    .line 211
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->k:Z

    .line 212
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/nightmode/a;->a(ZI)V

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    .line 218
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->k:Z

    .line 219
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/a;->g:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/nightmode/a;->a(ZI)V

    return-void
.end method
