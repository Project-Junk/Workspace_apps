.class Lcom/color/support/widget/ColorCircleProgressBar$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorCircleProgressBar;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/ColorCircleProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorCircleProgressBar$a;->a:Lcom/color/support/widget/ColorCircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ColorCircleProgressBar;Lcom/color/support/widget/ColorCircleProgressBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar$a;-><init>(Lcom/color/support/widget/ColorCircleProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/color/support/widget/ColorCircleProgressBar$a;->a:Lcom/color/support/widget/ColorCircleProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->sendAccessibilityEvent(I)V

    return-void
.end method
