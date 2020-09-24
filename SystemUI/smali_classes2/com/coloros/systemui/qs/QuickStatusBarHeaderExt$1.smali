.class Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderExt.java"

# interfaces
.implements Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public privacyChanged(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 340
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    .line 342
    invoke-virtual {v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->getPrivacyType()Lcom/coloros/systemui/qs/privacy/PrivacyType;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_LOCATION:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {v1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$100(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$200(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 347
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$300(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)V

    return-void
.end method
