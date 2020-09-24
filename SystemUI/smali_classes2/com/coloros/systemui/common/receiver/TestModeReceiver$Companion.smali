.class public final Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;
.super Ljava/lang/Object;
.source "TestModeReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/receiver/TestModeReceiver;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;",
        "",
        "()V",
        "ACTION_TEST_MODE",
        "",
        "EXTRA_TEST_MODE_SHOW",
        "EXTRA_TEST_MODE_TEST",
        "EXTRA_TEST_MODE_TYPE",
        "EXTRA_TEST_MODE_TYPE_5G_ANIM",
        "instance",
        "Lcom/coloros/systemui/common/receiver/TestModeReceiver;",
        "getInstance",
        "()Lcom/coloros/systemui/common/receiver/TestModeReceiver;",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/coloros/systemui/common/receiver/TestModeReceiver;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->access$getInstance$cp()Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    move-result-object p0

    return-object p0
.end method
