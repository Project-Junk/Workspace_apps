.class Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;
.super Ljava/lang/Object;
.source "ColorCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressPoint"
.end annotation


# instance fields
.field currentAlpha:F

.field final synthetic this$0:Lcom/color/support/widget/ColorCircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorCircleProgressBar;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;->this$0:Lcom/color/support/widget/ColorCircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAlpha()F
    .locals 1

    .line 462
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;->currentAlpha:F

    return v0
.end method

.method public setCurrentAlpha(F)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;->currentAlpha:F

    return-void
.end method
