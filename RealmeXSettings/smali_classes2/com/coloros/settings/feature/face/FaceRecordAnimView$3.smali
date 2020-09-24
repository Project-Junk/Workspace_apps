.class final Lcom/coloros/settings/feature/face/FaceRecordAnimView$3;
.super Ljava/lang/Object;
.source "FaceRecordAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceRecordAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/FaceRecordAnimView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView$3;->a:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView$3;->a:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a(Lcom/coloros/settings/feature/face/FaceRecordAnimView;F)F

    return-void
.end method
