.class Lcom/android/systemui/qs/ColorQSAnimator$2;
.super Ljava/lang/Object;
.source "ColorQSAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/ColorQSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/ColorQSAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/ColorQSAnimator;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator$2;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator$2;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/ColorQSAnimator;->access$100(Lcom/android/systemui/qs/ColorQSAnimator;)V

    .line 472
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator$2;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->access$200(Lcom/android/systemui/qs/ColorQSAnimator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/ColorQSAnimator;->setPosition(F)V

    return-void
.end method
