.class public final Lcom/coloros/settings/feature/sound/controller/b;
.super Ljava/lang/Object;
.source "ColorCommonVibrationUtils.java"


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/content/ContentResolver;

.field public c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

.field public d:Z

.field public final e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/b$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/sound/controller/b$1;-><init>(Lcom/coloros/settings/feature/sound/controller/b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/b;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/b;->a:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/b;->b:Landroid/content/ContentResolver;

    .line 57
    iput-object p2, p0, Lcom/coloros/settings/feature/sound/controller/b;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/b;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setNumber(I)V

    return-void
.end method
