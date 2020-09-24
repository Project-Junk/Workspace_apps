.class public final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;
.super Ljava/lang/Object;
.source "EmojiReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;",
        "",
        "()V",
        "Joiner",
        "",
        "ModifierBlack",
        "ModifierColorFul",
        "ModifierKeyCap",
        "ModifierTagRange",
        "Lkotlin/ranges/IntRange;",
        "getModifierTagRange",
        "()Lkotlin/ranges/IntRange;",
        "STATE_DEFAULT",
        "STATE_EMOJI",
        "STATE_EMOJI_JOIN",
        "STATE_EMOJI_MODIFIER",
        "STATE_NATIONAL_FLAG",
        "STATE_PRE_EMOJI",
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModifierTagRange()Lkotlin/ranges/IntRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->access$getModifierTagRange$cp()Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method
