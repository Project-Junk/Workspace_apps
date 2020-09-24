.class public final synthetic Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;->f$0:I

    iput-object p2, p0, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;->f$0:I

    iget-object p0, p0, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->lambda$updateNavBarVisibilityWithPkg$1(ILjava/lang/String;)V

    return-void
.end method
