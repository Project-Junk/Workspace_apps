.class final Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PhoneStatusBarViewEx.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Runnable;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->invoke()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 95
    new-instance v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;)V

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method
