.class public final Lcom/coloros/systemui/common/receiver/TestModeReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "TestModeReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0014\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/coloros/systemui/common/receiver/TestModeReceiver;",
        "Lcom/coloros/systemui/common/receiver/AbstractReceiver;",
        "()V",
        "getActions",
        "",
        "",
        "()[Ljava/lang/String;",
        "Companion",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final ACTION_TEST_MODE:Ljava/lang/String; = "oppo.action.open.TEST_MODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

.field public static final EXTRA_TEST_MODE_SHOW:Ljava/lang/String; = "show"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TEST_MODE_TEST:Ljava/lang/String; = "test"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TEST_MODE_TYPE:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TEST_MODE_TYPE_5G_ANIM:Ljava/lang/String; = "anim_5g"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance:Lcom/coloros/systemui/common/receiver/TestModeReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->Companion:Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

    .line 19
    new-instance v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    invoke-direct {v0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->instance:Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/coloros/systemui/common/receiver/TestModeReceiver;
    .locals 1

    .line 17
    sget-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->instance:Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    return-object v0
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "oppo.action.open.TEST_MODE"

    .line 27
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
