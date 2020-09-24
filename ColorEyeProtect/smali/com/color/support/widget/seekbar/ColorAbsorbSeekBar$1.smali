.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/e;)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/a/a/e;->c()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/a/a/e;->b()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(Lcom/a/a/e;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/a/a/e;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/a/a/e;)V
    .locals 0

    return-void
.end method
