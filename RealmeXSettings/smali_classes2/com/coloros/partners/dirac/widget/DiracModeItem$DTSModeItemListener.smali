.class Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;
.super Ljava/lang/Object;
.source "DiracModeItem.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/DiracModeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DTSModeItemListener"
.end annotation


# instance fields
.field mParamDTSModeItem:Lcom/coloros/partners/dirac/widget/DiracModeItem;

.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/DiracModeItem;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/widget/DiracModeItem;Lcom/coloros/partners/dirac/widget/DiracModeItem;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->mParamDTSModeItem:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->mParamDTSModeItem:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->mParamDTSModeItem:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->access$000(Lcom/coloros/partners/dirac/widget/DiracModeItem;F)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->access$100(Lcom/coloros/partners/dirac/widget/DiracModeItem;)Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->access$100(Lcom/coloros/partners/dirac/widget/DiracModeItem;)Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;->onPositionUpdated()V

    :cond_1
    return-void
.end method
