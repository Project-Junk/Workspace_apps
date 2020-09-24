.class final Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Animation5GViewGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;",
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
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1",
        "invoke",
        "()Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 93
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;-><init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;Landroid/os/Looper;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;->invoke()Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;

    move-result-object p0

    return-object p0
.end method
