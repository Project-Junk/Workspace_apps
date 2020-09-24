.class public final Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;
.super Ljava/lang/Object;
.source "StatusBarAnimBlackList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarAnimBlackList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarAnimBlackList.kt\ncom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList\n*L\n1#1,42:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\u00020\t2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;",
        "",
        "()V",
        "ANIM_5G",
        "",
        "sStatusBarAnimBlackList",
        "Ljava/util/ArrayList;",
        "getStatusBarAnimBlackList",
        "initStatusBarAnimBlackList",
        "",
        "context",
        "Landroid/content/Context;",
        "isBlackListValue",
        "",
        "value",
        "setStatusBarAnimBlackList",
        "statusBarAnimBlackList",
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


# static fields
.field public static final ANIM_5G:Ljava/lang/String; = "anim_5g"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

.field private static final sStatusBarAnimBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->sStatusBarAnimBlackList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatusBarAnimBlackList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    sget-object p0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->sStatusBarAnimBlackList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final initStatusBarAnimBlackList(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sys_systemui_quicksettingstile_blacklist"

    .line 35
    invoke-static {p1, v0}, Lcom/coloros/systemui/provider/ProviderUtil;->getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->setStatusBarAnimBlackList(Ljava/util/List;)V

    return-void
.end method

.method public final isBlackListValue(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->getStatusBarAnimBlackList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setStatusBarAnimBlackList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    sget-object p0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->sStatusBarAnimBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 27
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    .line 28
    sget-object p0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->sStatusBarAnimBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
