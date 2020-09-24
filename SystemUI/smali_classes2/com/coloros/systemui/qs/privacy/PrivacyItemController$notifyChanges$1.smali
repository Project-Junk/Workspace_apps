.class final Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyItemController;-><init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,260:1\n1582#2,2:261\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1\n*L\n86#1,2:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->getPrivacyList$SystemUI_realmeReleaseExp()Ljava/util/List;

    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 261
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 86
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;->privacyChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
