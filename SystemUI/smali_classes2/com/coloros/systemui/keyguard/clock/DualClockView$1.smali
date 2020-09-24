.class Lcom/coloros/systemui/keyguard/clock/DualClockView$1;
.super Ljava/lang/Object;
.source "DualClockView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/DualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/DualClockView;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 176
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getLocationOnScreen()[I

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->access$000(Lcom/coloros/systemui/keyguard/clock/DualClockView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualClockView"

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    .line 179
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getAlpha()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " translationX="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    .line 180
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getTranslationX()F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " translationY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    .line 181
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getTranslationY()F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
