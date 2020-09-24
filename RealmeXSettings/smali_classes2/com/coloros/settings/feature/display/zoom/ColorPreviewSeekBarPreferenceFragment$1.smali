.class final Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$FrfUyQL1xYKjsHEGjm4pmCjOFDc(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a()V

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V
    .locals 2

    .line 86
    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;I)V

    .line 89
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->b:Z

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->b:Z

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;I)V

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcom/coloros/settings/feature/display/zoom/a;

    move-result-object p1

    .line 1138
    iget p1, p1, Lcom/coloros/settings/feature/display/zoom/a;->b:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcom/coloros/settings/feature/display/zoom/a;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$1$FrfUyQL1xYKjsHEGjm4pmCjOFDc;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$1$FrfUyQL1xYKjsHEGjm4pmCjOFDc;-><init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;)V

    .line 1142
    iput-object v1, p1, Lcom/coloros/settings/feature/display/zoom/a;->a:Ljava/lang/Runnable;

    goto :goto_1

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;->b:Z

    return-void
.end method
