.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# virtual methods
.method public run()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
