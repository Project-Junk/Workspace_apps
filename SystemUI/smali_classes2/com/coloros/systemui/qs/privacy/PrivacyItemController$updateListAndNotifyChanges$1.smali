.class final Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;
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

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$updatePrivacyList(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$getUiHandler$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$getNotifyChanges$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
