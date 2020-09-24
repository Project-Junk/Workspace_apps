.class Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ColorSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/seekbar/ColorSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-static {v2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$1100(Lcom/color/support/widget/seekbar/ColorSeekBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
