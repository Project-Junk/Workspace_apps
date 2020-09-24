.class Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;
.super Ljava/lang/Object;
.source "ColorItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 174
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-virtual {v2, v1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object v0, v0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
