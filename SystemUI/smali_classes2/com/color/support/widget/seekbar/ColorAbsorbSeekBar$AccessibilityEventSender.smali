.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ColorAbsorbSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

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
