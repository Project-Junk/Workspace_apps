.class public final Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;",
        "Landroid/content/BroadcastReceiver;",
        "(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 228
    sget-object p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->Companion:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;->getIntents()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$update(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;Z)V

    :cond_1
    return-void
.end method
