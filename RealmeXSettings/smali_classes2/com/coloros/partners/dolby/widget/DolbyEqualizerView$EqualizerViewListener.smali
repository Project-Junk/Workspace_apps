.class Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;
.super Ljava/lang/Object;
.source "DolbyEqualizerView.java"

# interfaces
.implements Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerViewListener"
.end annotation


# instance fields
.field mEqualizerView:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

.field final synthetic this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    return-void
.end method


# virtual methods
.method public onProgressUpdate()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-static {v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->access$000(Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;)Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-virtual {v1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->getAllProgress()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;->onProgressUpdate([I)V

    .line 295
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerViewListener;->mEqualizerView:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-static {v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->access$100(Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;)V

    :cond_0
    return-void
.end method
