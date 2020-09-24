.class Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;
.super Ljava/lang/Object;
.source "DiracEqualizerView.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/DiracEqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerViewListener"
.end annotation


# instance fields
.field mEqualizerView:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    return-void
.end method


# virtual methods
.method public onProgressUpdate()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->access$000(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getAllProgress()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;->onProgressUpdate([I)V

    .line 296
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->access$100(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)V

    :cond_0
    return-void
.end method
