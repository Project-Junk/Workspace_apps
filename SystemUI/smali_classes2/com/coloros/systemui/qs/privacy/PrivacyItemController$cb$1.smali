.class public final Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyItemController;-><init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/coloros/systemui/qs/privacy/PrivacyItemController$cb$1",
        "Lcom/android/systemui/appops/AppOpsController$Callback;",
        "onActiveStateChanged",
        "",
        "code",
        "",
        "uid",
        "packageName",
        "",
        "active",
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
.field final synthetic this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveStateChanged(IILjava/lang/String;Z)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "packageName"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 102
    iget-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$getCurrentUserIds$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyItemController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->access$update(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;Z)V

    :cond_0
    return-void
.end method
