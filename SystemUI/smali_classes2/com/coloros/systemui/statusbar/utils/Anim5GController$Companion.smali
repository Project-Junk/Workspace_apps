.class public final Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;
.super Ljava/lang/Object;
.source "Anim5GController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/utils/Anim5GController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;",
        "",
        "()V",
        "ONE_DAY",
        "",
        "SHOW_TIMES_LIMIT",
        "",
        "SP_ANIM_CNT",
        "",
        "SP_ANIM_LAST_TIME",
        "TAG",
        "instance",
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController;",
        "getInstance",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->access$getInstance$cp()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object p0

    return-object p0
.end method
