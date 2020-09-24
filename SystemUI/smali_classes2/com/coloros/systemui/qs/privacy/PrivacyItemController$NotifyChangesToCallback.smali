.class final Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotifyChangesToCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;",
        "Ljava/lang/Runnable;",
        "callback",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
        "list",
        "",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
        "(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;Ljava/util/List;)V",
        "run",
        "",
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
.field private final callback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    iput-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;->privacyChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method
