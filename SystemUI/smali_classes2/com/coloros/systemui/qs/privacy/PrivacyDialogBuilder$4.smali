.class final Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyDialogBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        ">;>;",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        "it",
        "Lkotlin/Pair;",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;->INSTANCE:Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .locals 0
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;>;)",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;->invoke(Lkotlin/Pair;)Lcom/coloros/systemui/qs/privacy/PrivacyType;

    move-result-object p0

    return-object p0
.end method
