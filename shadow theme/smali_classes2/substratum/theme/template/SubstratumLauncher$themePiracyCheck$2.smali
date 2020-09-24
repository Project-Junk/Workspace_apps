.class final Lsubstratum/theme/template/SubstratumLauncher$themePiracyCheck$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SubstratumLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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


# instance fields
.field final synthetic this$0:Lsubstratum/theme/template/SubstratumLauncher;


# direct methods
.method constructor <init>(Lsubstratum/theme/template/SubstratumLauncher;)V
    .locals 0

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$themePiracyCheck$2;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lsubstratum/theme/template/SubstratumLauncher$themePiracyCheck$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 44
    nop

    .line 47
    nop

    .line 44
    nop

    .line 48
    const/4 v0, 0x0

    return v0
.end method
