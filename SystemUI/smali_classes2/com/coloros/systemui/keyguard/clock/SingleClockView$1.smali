.class Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;
.super Ljava/lang/Object;
.source "SingleClockView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/SingleClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/SingleClockView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 172
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getLocationOnScreen()[I

    move-result-object p1

    .line 173
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->access$000(Lcom/coloros/systemui/keyguard/clock/SingleClockView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleClockView"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    .line 175
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getAlpha()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getMeasuredHeight()I

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

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    .line 176
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getTranslationX()F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " translationY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getTranslationY()F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
